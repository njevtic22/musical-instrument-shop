package com.instrument.shop.faker;

import com.github.javafaker.Faker;
import com.instrument.shop.model.Image;
import com.instrument.shop.model.InstrumentType;
import com.instrument.shop.model.Role;
import com.instrument.shop.model.User;
import com.instrument.shop.util.CycleIterator;
import com.instrument.shop.util.LongGenerator;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import static com.instrument.shop.faker.SqlUtil.toSqlAlterSequenceRestart;
import static com.instrument.shop.faker.SqlUtil.toSqlInsert;

public class FakeDatabaseGenerator {
    private final Faker faker = new Faker();

    private final String LINE = "-";
    private final String LINES = LINE.repeat(200);

    private final Role[] roles = {Role.MANAGER, Role.SALESMAN, Role.CUSTOMER};
    private final int USERS_PER_ROLE = 10;
    private final int IMAGES = roles.length * USERS_PER_ROLE;
    private final int INSTRUMENT_TYPES = 12;

    private final String encodedPassword = "$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6";

    private final PrintWriter out = new PrintWriter(new FileWriter("./src/main/resources/data-generated.sql"));
    private final CycleIterator imageUrl = getImageUrlIterator();
    private final Iterator<String> instrumentType = getInstrumentTypeIterator();

    public FakeDatabaseGenerator() throws IOException {
    }

    private CycleIterator getImageUrlIterator() throws IOException {
        BufferedReader in = new BufferedReader(new FileReader("./src/main/resources/images.txt"));
        String[] urlsTemp = new String[50];
        for (int i = 0; i < 50; i++) {
            String line = in.readLine();
            if (line.startsWith("404")) {
                break;
            }

            urlsTemp[i] = line;
        }

        in.close();
        return new CycleIterator(urlsTemp);
    }

    private Iterator<String> getInstrumentTypeIterator() throws IOException {
        BufferedReader in = new BufferedReader(new FileReader("./src/main/resources/instrument types.txt"));
        ArrayList<String> typesTemp = new ArrayList<>(12);
        for (int i = 0; i < 12; i++) {
            String line = in.readLine();
            typesTemp.add(line);
        }

        in.close();
        return typesTemp.iterator();
    }

    private void generateHeader() {
        out.println("-- Passwords are hashed using BCrypt algorithm https://bcrypt-generator.com/");
        out.println("-- Passwords for all users are:");
        out.println("--");

        out.println("-- Script generates database for sparkjava-shop");
        out.println("-- It generates:");
        out.println("--\t- "   + IMAGES + " images");
        out.println("--\t- "   + roles.length * USERS_PER_ROLE + " users");
        out.println("--\t\t- " + USERS_PER_ROLE + " managers");
        out.println("--\t\t- " + USERS_PER_ROLE + " salesmen");
        out.println("--\t\t- " + USERS_PER_ROLE + " customers");
        out.println("--\t- "   + INSTRUMENT_TYPES + " instrument types");
        out.println("--");

        out.flush();
    }

    public void generate() {
        generateHeader();

        // inserting images
        LongGenerator imageId = new LongGenerator();
        Map<Long, Image> images = generateImages(imageId);
        // altering image_id_seq
        printSequenceRestart(IMAGES, imageId, "image_id_seq");

        // inserting instrument types
        LongGenerator typeId = new LongGenerator();
        Map<Long, InstrumentType> types = generateInstrumentTypes(typeId);
        // altering instrument_type_id_seq
        printSequenceRestart(INSTRUMENT_TYPES, typeId, "instrument_type_id_seq");

        // inserting users
        LongGenerator userId = new LongGenerator();
        Map<Long, User> users = generateUsers(userId, images);
        // altering user_id_seq
        printSequenceRestart((long) roles.length * USERS_PER_ROLE, userId, "user_id_seq");

        out.close();
    }

    private Map<Long, Image> generateImages(LongGenerator imageId) {
        printStartLines("Inserting images");

        HashMap<Long, Image> images = new HashMap<>(IMAGES);
        for (int i = 0; i < IMAGES; i++) {
            Image image = new Image(
                    imageId.next(),
                    imageUrl.next(),
                    false
            );
            images.put(imageId.current(), image);
            out.println(toSqlInsert(image));
        }

        printEndLines();
        return images;
    }

    private Map<Long, InstrumentType> generateInstrumentTypes(LongGenerator typeId) {
        printStartLines("Inserting instrument types");

        HashMap<Long, InstrumentType> types = new HashMap<>(INSTRUMENT_TYPES);
        for (int i = 0; i < INSTRUMENT_TYPES; i++) {
            InstrumentType type = new InstrumentType(
                    typeId.next(),
                    instrumentType.next(),
                    false
            );
            types.put(typeId.current(), type);
            out.println(toSqlInsert(type));
        }

        printEndLines();
        return types;
    }

    private Map<Long, User> generateUsers(LongGenerator userId, Map<Long, Image> images) {
        printStartLines("Inserting users");

        HashMap<Long, User> users = new HashMap<>(roles.length * USERS_PER_ROLE);
        for (int i = 0; i < roles.length; i++) {
            Role role = roles[i];

            for (int j = 0; j < USERS_PER_ROLE; j++) {
                User user = new User(
                        userId.next(),
                        faker.name().firstName(),
                        FakerUtil.escapeApostrophe(faker.name().lastName()),
                        role.toString().toLowerCase() + (j + 1) + "@gmail.com",
                        role.toString().toLowerCase() + (j + 1),
                        encodedPassword,
                        false,
                        role,
                        images.get((i * 10L) + j + 1)
                );
                users.put(userId.current(), user);
                out.println(toSqlInsert(user));
            }

            out.println();
        }

        printEndLines();
        return users;
    }

    private void printSequenceRestart(final long OBJECT_NUM, LongGenerator objectId, String sequenceName) {
        if (OBJECT_NUM != objectId.current()) {
            throw new AssertionError("OBJECT_NUM != objectId.current() for: " + sequenceName);
        }

        printStartLines("Altering " + sequenceName);
        out.println(toSqlAlterSequenceRestart(sequenceName, OBJECT_NUM + 1));
        printEndLines();
    }

    private void printStartLines(String description) {
        int descLength = description.length() + 2;
        int remainingLength = LINES.length() - descLength;

        int firstHalf = remainingLength / 2;
        int secondHalf = remainingLength - firstHalf;   // if length is odd

        String line = LINE.repeat(firstHalf) + " " + description + " " + LINE.repeat(secondHalf);

        out.println(LINES);
        out.println(line);
    }

    private void printEndLines() {
        out.println(LINES);
        out.println(LINES);
        out.println();
    }

    public static void main(String[] args) throws IOException {
        new FakeDatabaseGenerator().generate();
    }
}
