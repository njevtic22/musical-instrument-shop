package com.instrument.shop.mapper;

import com.instrument.shop.dto.auth.RegisterUserDto;
import com.instrument.shop.dto.user.AddUserDto;
import com.instrument.shop.dto.user.UpdateUserDto;
import com.instrument.shop.dto.user.UserViewDto;
import com.instrument.shop.model.Role;
import com.instrument.shop.model.User;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;

@Singleton
public class UserMapper {
    private final ImageMapper imageMapper;

    @Inject
    public UserMapper(ImageMapper imageMapper) {
        this.imageMapper = imageMapper;
    }

    public User toModel(AddUserDto addUserDto) {
        return new User(
                addUserDto.getName(),
                addUserDto.getSurname(),
                addUserDto.getEmail(),
                addUserDto.getUsername(),
                addUserDto.getPassword(),
                false,
                Role.valueOf(addUserDto.getRole()),
                null,
                null,
                null
        );
    }

    public User toModel(UpdateUserDto updateUserDto) {
        return new User(
                updateUserDto.getName(),
                updateUserDto.getSurname(),
                updateUserDto.getEmail(),
                updateUserDto.getUsername(),
                "",
                false,
                null,
                null,
                null,
                null
        );
    }

    public User toModel(RegisterUserDto registerUserDto) {
        return new User(
                registerUserDto.getName(),
                registerUserDto.getSurname(),
                registerUserDto.getEmail(),
                registerUserDto.getUsername(),
                registerUserDto.getPassword(),
                false,
                Role.CUSTOMER,
                null,
                null,
                null
        );
    }

    public UserViewDto toViewDto(User user) {
        return new UserViewDto(
                user.getId(),
                user.getName(),
                user.getSurname(),
                user.getEmail(),
                user.getUsername(),
                user.getRole().toString(),
                imageMapper.toViewDto(user.getImage())
        );
    }
}
