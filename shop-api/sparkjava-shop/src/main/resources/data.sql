-- Passwords are hashed using BCrypt algorithm https://bcrypt-generator.com/
-- Passwords for all users are:
--
-- Scripts combined generates database for sparkjava-shop
-- It generates:
--	- 1230 images
--	- 30 users
--		- 10 managers
--		- 10 salesmen
--		- 10 customers
--	- 12 instrument types
--	- 120 available instruments
--		- 10 per type
--		- 10 images for 1 available instrument
--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------- Inserting instrument types --------------------------------------------------------------------------------------
insert into instrument_types (id, name, archived) values (1, 'Plucked', false);
insert into instrument_types (id, name, archived) values (2, 'Bowed', false);
insert into instrument_types (id, name, archived) values (3, 'Woodwinds', false);
insert into instrument_types (id, name, archived) values (4, 'Brass', false);
insert into instrument_types (id, name, archived) values (5, 'Percussion', false);
insert into instrument_types (id, name, archived) values (6, 'Electronic', false);
insert into instrument_types (id, name, archived) values (7, 'Keyboard', false);
insert into instrument_types (id, name, archived) values (8, 'Idiophones', false);
insert into instrument_types (id, name, archived) values (9, 'Membranophones', false);
insert into instrument_types (id, name, archived) values (10, 'Chordophones', false);
insert into instrument_types (id, name, archived) values (11, 'Aerophones', false);
insert into instrument_types (id, name, archived) values (12, 'Electrophones', false);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------- Altering instrument_type_id_seq ------------------------------------------------------------------------------------
alter sequence instrument_type_id_seq restart with 13;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------- Inserting available instruments ------------------------------------------------------------------------------------
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (1, '78l1', 'A1: Zarbon', 'A1: Lou', 'There is nothing regular about Chuck Norris'' expressions.', 923.99, 10, 1, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (2, 'RRS2', 'A2: Mr. Popo', 'A2: Dr. Emmett Brown', 'Chuck Norris doesn''t use web standards as the web will conform to him.', 666.99, 10, 1, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (3, 'Uz33', 'A3: King Vegeta', 'A3: Dr. Emmett Brown', 'Chuck Norris''s beard can type 140 wpm.', 882.99, 10, 1, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (4, 'o8G4', 'A4: Goten', 'A4: Linda McFly', 'All browsers support the hex definitions #chuck and #norris for the colors black and blue.', 353.99, 10, 1, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (5, 'cWn5', 'A5: Freeza', 'A5: Marty McFly', 'Chuck Norris can read all encrypted data, because nothing can hide from Chuck Norris.', 361.99, 10, 1, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (6, 'jEv6', 'A6: Baby', 'A6: Dave McFly', 'Chuck Norris doesn''t need the cloud to scale his applications, he uses his laptop.', 733.99, 10, 1, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (7, 'drh7', 'A7: Yajirobe', 'A7: George McFly', 'Chuck Norris'' protocol design method has no status, requests or responses, only commands.', 906.99, 10, 1, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (8, 'LYf8', 'A8: Super Saiyan Trunks', 'A8: Match', 'Chuck Norris doesn''t need garbage collection because he doesn''t call .Dispose(), he calls .DropKick().', 403.99, 10, 1, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (9, '1sd9', 'A9: Super Saiyan Gohan', 'A9: Goldie Wilson', 'Chuck Norris has root access to your system.', 536.99, 10, 1, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (10, '8Ib10', 'A10: Chi-Chi', 'A10: Linda McFly', 'Chuck Norris went out of an infinite loop.', 667.99, 10, 1, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (11, '1Yu11', 'A11: Goku', 'A11: Sally Baines', 'When Chuck Norris presses Ctrl+Alt+Delete, worldwide computer restart is initiated.', 504.99, 10, 2, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (12, 'o8P12', 'A12: Bra', 'A12: Marty McFly', 'Quantum cryptography does not work on Chuck Norris. When something is being observed by Chuck it stays in the same state until he''s finished.', 426.99, 10, 2, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (13, 'dXj13', 'A13: Shenlong', 'A13: Goldie Wilson', 'When Chuck Norris gives a method an argument, the method loses.', 495.99, 10, 2, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (14, 'tO814', 'A14: Goku', 'A14: Sam Baines', 'Chuck Norris can use GOTO as much as he wants to. Telling him otherwise is considered harmful.', 886.99, 10, 2, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (15, 'gBQ15', 'A15: Dende', 'A15: 3-D', 'Chuck Norris can spawn threads that complete before they are started.', 714.99, 10, 2, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (16, 'Gbw16', 'A16: Super Saiyan 2 Vegeta', 'A16: Lou', 'Chuck Norris can read all encrypted data, because nothing can hide from Chuck Norris.', 113.99, 10, 2, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (17, 'gZC17', 'A17: Nail', 'A17: Marvin Berry', 'Chuck Norris never gets a syntax error. Instead, the language gets a DoesNotConformToChuck error.', 364.99, 10, 2, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (18, 'Kd518', 'A18: Supreme Kai', 'A18: Joey Baines', 'Chuck Norris doesn''t use a computer because a computer does everything slower than Chuck Norris.', 815.99, 10, 2, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (19, '4HY19', 'A19: Tien', 'A19: 3-D', 'Chuck Norris''s first program was kill -9.', 802.99, 10, 2, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (20, 'KyO20', 'A20: Uh Shenlong', 'A20: Linda McFly', 'Chuck Norris doesn''t program with a keyboard. He stares the computer down until it does what he wants.', 596.99, 10, 2, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (21, 'gCi21', 'A21: Super Saiyan 2 Gohan', 'A21: 3-D', 'Chuck Norris doesn''t get compiler errors, the language changes itself to accommodate Chuck Norris.', 417.99, 10, 3, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (22, 'JNZ22', 'A22: Chaozu', 'A22: Red The Bum', 'Chuck Norris doesn''t bug hunt, as that signifies a probability of failure. He goes bug killing.', 516.99, 10, 3, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (23, '4iw23', 'A23: Grandpa Gohan', 'A23: Lorraine Baines', 'Chuck Norris can access the DB from the UI.', 855.99, 10, 3, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (24, 'KYi24', 'A24: Captain Ginyu', 'A24: Mr. Strickland', 'Chuck Norris'' beard is immutable.', 594.99, 10, 3, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (25, 'nKt25', 'A25: Supreme Kai', 'A25: Dr. Emmett Brown', 'Chuck Norris doesn''t believe in floating point numbers because they can''t be typed on his binary keyboard.', 678.99, 10, 3, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (26, 'xtw26', 'A26: Goku', 'A26: Dave McFly', 'Project managers never ask Chuck Norris for estimations... ever.', 761.99, 10, 3, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (27, 'iBw27', 'A27: Captain Ginyu', 'A27: Milton Baines', 'Chuck Norris''s beard can type 140 wpm.', 360.99, 10, 3, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (28, 'ltj28', 'A28: Captain Ginyu', 'A28: Marty McFly', 'Chuck Norris does not use exceptions when programming. He has not been able to identify any of his code that is not exceptional.', 975.99, 10, 3, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (29, 'twH29', 'A29: Beerus', 'A29: Milton Baines', 'All arrays Chuck Norris declares are of infinite size, because Chuck Norris knows no bounds.', 653.99, 10, 3, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (30, 'L4o30', 'A30: Pilaf', 'A30: Lorraine Baines', 'Chuck Norris doesn''t pair program.', 925.99, 10, 3, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (31, 'JKe31', 'A31: Oolong', 'A31: Jennifer Parker', 'Chuck Norris doesn''t need a java compiler, he goes straight to .war', 164.99, 10, 4, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (32, '1O532', 'A32: Kid Trunks', 'A32: Joey Baines', 'The only pattern Chuck Norris knows is God Object.', 807.99, 10, 4, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (33, 'F9u33', 'A33: Yajirobe', 'A33: George McFly', 'All arrays Chuck Norris declares are of infinite size, because Chuck Norris knows no bounds.', 363.99, 10, 4, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (34, 'vKW34', 'A34: Mystic Gohan', 'A34: Mr. Strickland', 'Chuck Norris doesn''t need to know about class factory pattern. He can instantiate interfaces.', 765.99, 10, 4, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (35, '0DH35', 'A35: Majin Buu', 'A35: Marty McFly', 'The programs that Chuck Norris writes don''t have version numbers because he only writes them once. If a user reports a bug or has a feature request they don''t live to see the sun set.', 632.99, 10, 4, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (36, 'YIH36', 'A36: Super Saiyan 2 Vegeta', 'A36: Lorraine Baines', 'Chuck Norris writes code that optimizes itself.', 950.99, 10, 4, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (37, '5zn37', 'A37: Goku', 'A37: Marty McFly', 'Chuck Norris''s keyboard doesn''t have a Ctrl key because nothing controls Chuck Norris.', 803.99, 10, 4, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (38, 'Jx938', 'A38: Yajirobe', 'A38: Mr. Strickland', 'Chuck Norris''s first program was kill -9.', 753.99, 10, 4, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (39, '6bk39', 'A39: Whis', 'A39: Stella Baines', 'Chuck Norris doesn''t delete files, he blows them away.', 354.99, 10, 4, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (40, 'b6T40', 'A40: Bulma', 'A40: Biff Tannen', 'Chuck Norris'' protocol design method has no status, requests or responses, only commands.', 159.99, 10, 4, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (41, 'luX41', 'A41: Nappa', 'A41: Match', 'Chuck Norris can read all encrypted data, because nothing can hide from Chuck Norris.', 231.99, 10, 5, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (42, 'E8E42', 'A42: Guru', 'A42: Lou', 'All arrays Chuck Norris declares are of infinite size, because Chuck Norris knows no bounds.', 783.99, 10, 5, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (43, 'oqS43', 'A43: Majin Vegeta', 'A43: Sam Baines', 'Quantum cryptography does not work on Chuck Norris. When something is being observed by Chuck it stays in the same state until he''s finished.', 186.99, 10, 5, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (44, 'bvg44', 'A44: Super Saiyan 3 Goku', 'A44: Match', 'Chuck Norris'' programs occupy 150% of CPU, even when they are not executing.', 382.99, 10, 5, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (45, 'BGg45', 'A45: Shenron', 'A45: Sam Baines', 'Chuck Norris programs do not accept input.', 802.99, 10, 5, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (46, '3fL46', 'A46: Goku', 'A46: George McFly', 'Chuck Norris can divide by zero.', 234.99, 10, 5, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (47, 'gtZ47', 'A47: Tien', 'A47: Stella Baines', 'Chuck Norris doesn''t program with a keyboard. He stares the computer down until it does what he wants.', 587.99, 10, 5, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (48, 'sRY48', 'A48: Kid Trunks', 'A48: Dave McFly', 'The programs that Chuck Norris writes don''t have version numbers because he only writes them once. If a user reports a bug or has a feature request they don''t live to see the sun set.', 392.99, 10, 5, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (49, 'vUw49', 'A49: Ryuu Shenlong', 'A49: Jennifer Parker', 'When Chuck Norris'' code fails to compile the compiler apologises.', 272.99, 10, 5, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (50, 'iEv50', 'A50: Goten', 'A50: George McFly', 'Chuck Norris doesn''t bug hunt, as that signifies a probability of failure. He goes bug killing.', 390.99, 10, 5, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (51, 'Hee51', 'A51: Guru', 'A51: Marvin Berry', 'Chuck Norris can unit test an entire application with a single assert.', 160.99, 10, 6, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (52, 'b2W52', 'A52: Pilaf', 'A52: Jennifer Parker', 'Chuck Norris doesn''t have performance bottlenecks. He just makes the universe wait its turn.', 918.99, 10, 6, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (53, 'JWN53', 'A53: Dende', 'A53: Joey Baines', 'Chuck Norris doesn''t need to know about class factory pattern. He can instantiate interfaces.', 649.99, 10, 6, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (54, 'eZR54', 'A54: Chi-Chi', 'A54: Goldie Wilson', 'Chuck Norris'' addition operator doesn''t commute; it teleports to where he needs it to be.', 899.99, 10, 6, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (55, 'MVF55', 'A55: Future Trunks', 'A55: Mark Dixon', 'Chuck Norris doesn''t need the cloud to scale his applications, he uses his laptop.', 443.99, 10, 6, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (56, 'eZS56', 'A56: Super Saiyan Vegeta', 'A56: Sam Baines', 'When Chuck Norris presses Ctrl+Alt+Delete, worldwide computer restart is initiated.', 622.99, 10, 6, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (57, 'BhL57', 'A57: Mystic Gohan', 'A57: Linda McFly', 'Chuck Norris doesn''t need to know about class factory pattern. He can instantiate interfaces.', 842.99, 10, 6, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (58, 'rJg58', 'A58: Krillin', 'A58: Skinhead', 'Chuck Norris doesn''t use a computer because a computer does everything slower than Chuck Norris.', 770.99, 10, 6, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (59, '68459', 'A59: Freeza', 'A59: Sam Baines', 'Chuck Norris has root access to your system.', 493.99, 10, 6, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (60, 'OGU60', 'A60: Super Saiyan Gohan', 'A60: Skinhead', 'Whiteboards are white because Chuck Norris scared them that way.', 751.99, 10, 6, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (61, 'jMC61', 'A61: Champa', 'A61: Red The Bum', 'The only pattern Chuck Norris knows is God Object.', 318.99, 10, 7, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (62, 'p7l62', 'A62: Champa', 'A62: Milton Baines', 'There is no Esc key on Chuck Norris'' keyboard, because no one escapes Chuck Norris.', 141.99, 10, 7, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (63, 'MLX63', 'A63: Baby', 'A63: Marty McFly', 'Project managers never ask Chuck Norris for estimations... ever.', 278.99, 10, 7, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (64, 'zvu64', 'A64: Captain Ginyu', 'A64: 3-D', 'When Chuck Norris gives a method an argument, the method loses.', 327.99, 10, 7, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (65, '0DK65', 'A65: Goku', 'A65: Sam Baines', 'Chuck Norris doesn''t believe in floating point numbers because they can''t be typed on his binary keyboard.', 306.99, 10, 7, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (66, 'DeB66', 'A66: Vados', 'A66: 3-D', 'Chuck Norris doesn''t delete files, he blows them away.', 530.99, 10, 7, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (67, 'q1T67', 'A67: Grandpa Gohan', 'A67: Marty McFly', 'Chuck Norris'' addition operator doesn''t commute; it teleports to where he needs it to be.', 157.99, 10, 7, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (68, 'gx468', 'A68: Kid Trunks', 'A68: George McFly', 'When Chuck Norris points to null, null quakes in fear.', 257.99, 10, 7, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (69, 'yA669', 'A69: Shenlong', 'A69: Joey Baines', 'Chuck Norris can access the DB from the UI.', 954.99, 10, 7, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (70, 'dph70', 'A70: Videl', 'A70: Mark Dixon', 'The programs that Chuck Norris writes don''t have version numbers because he only writes them once. If a user reports a bug or has a feature request they don''t live to see the sun set.', 241.99, 10, 7, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (71, 'i0X71', 'A71: Zamasu', 'A71: Dr. Emmett Brown', 'Chuck Norris compresses his files by doing a flying round house kick to the hard drive.', 541.99, 10, 8, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (72, 'K4w72', 'A72: Cell', 'A72: Mr. Strickland', 'Chuck Norris can''t test for equality because he has no equal.', 568.99, 10, 8, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (73, '3yd73', 'A73: Chaozu', 'A73: Stella Baines', 'There is nothing regular about Chuck Norris'' expressions.', 315.99, 10, 8, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (74, 'JJC74', 'A74: Elder Kai', 'A74: Match', 'Chuck Norris''s beard can type 140 wpm.', 979.99, 10, 8, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (75, 'tau75', 'A75: Krillin', 'A75: Stella Baines', 'There is no Esc key on Chuck Norris'' keyboard, because no one escapes Chuck Norris.', 461.99, 10, 8, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (76, '1UQ76', 'A76: Zamasu', 'A76: Lou', 'Chuck Norris is immutable. If something''s going to change, it''s going to have to be the rest of the universe.', 621.99, 10, 8, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (77, 'cW477', 'A77: Yajirobe', 'A77: Dave McFly', 'Chuck Norris''s keyboard doesn''t have a Ctrl key because nothing controls Chuck Norris.', 972.99, 10, 8, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (78, '5eq78', 'A78: Mr. Popo', 'A78: Skinhead', 'Chuck Norris'' keyboard doesn''t have a F1 key, the computer asks him for help.', 742.99, 10, 8, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (79, 'uwk79', 'A79: Super Saiyan 3 Goku', 'A79: Marvin Berry', 'Chuck Norris can access the DB from the UI.', 222.99, 10, 8, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (80, 'r4E80', 'A80: Whis', 'A80: Sally Baines', 'Chuck Norris doesn''t delete files, he blows them away.', 240.99, 10, 8, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (81, 'AuW81', 'A81: Mr. Popo', 'A81: Red The Bum', 'The programs that Chuck Norris writes don''t have version numbers because he only writes them once. If a user reports a bug or has a feature request they don''t live to see the sun set.', 674.99, 10, 9, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (82, 'WQ282', 'A82: Vegeta', 'A82: Red The Bum', 'When Chuck Norris gives a method an argument, the method loses.', 456.99, 10, 9, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (83, '6oN83', 'A83: Zarbon', 'A83: Milton Baines', 'When a bug sees Chuck Norris, it flees screaming in terror, and then immediately self-destructs to avoid being roundhouse-kicked.', 773.99, 10, 9, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (84, 'Woz84', 'A84: Baby', 'A84: Match', 'Chuck Norris doesn''t bug hunt, as that signifies a probability of failure. He goes bug killing.', 977.99, 10, 9, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (85, 'r6285', 'A85: Krillin', 'A85: Sally Baines', 'Chuck Norris doesn''t pair program.', 353.99, 10, 9, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (86, 'oTO86', 'A86: Ryan Shenlong', 'A86: Biff Tannen', 'Chuck Norris breaks RSA 128-bit encrypted codes in milliseconds.', 838.99, 10, 9, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (87, '78N87', 'A87: Mystic Gohan', 'A87: Skinhead', 'Chuck Norris doesn''t have performance bottlenecks. He just makes the universe wait its turn.', 649.99, 10, 9, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (88, 'ISl88', 'A88: Super Saiyan Goten', 'A88: Skinhead', 'Chuck Norris has root access to your system.', 309.99, 10, 9, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (89, '4L389', 'A89: Super Saiyan 3 Goku', 'A89: Dave McFly', 'Chuck Norris can spawn threads that complete before they are started.', 842.99, 10, 9, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (90, '4X590', 'A90: Goten', 'A90: Marvin Berry', 'Quantum cryptography does not work on Chuck Norris. When something is being observed by Chuck it stays in the same state until he''s finished.', 489.99, 10, 9, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (91, '5jT91', 'A91: Android 16', 'A91: Einstein', 'Chuck Norris solved the Travelling Salesman problem in O(1) time.', 537.99, 10, 10, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (92, 'jSG92', 'A92: Beerus', 'A92: Sam Baines', 'When a bug sees Chuck Norris, it flees screaming in terror, and then immediately self-destructs to avoid being roundhouse-kicked.', 738.99, 10, 10, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (93, 'OYV93', 'A93: Mr. Popo', 'A93: Stella Baines', 'Chuck Norris rewrote the Google search engine from scratch.', 515.99, 10, 10, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (94, 'oUy94', 'A94: Super Saiyan Goku', 'A94: Einstein', 'Chuck Norris never gets a syntax error. Instead, the language gets a DoesNotConformToChuck error.', 291.99, 10, 10, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (95, 'wT995', 'A95: Chi-Chi', 'A95: Einstein', 'Chuck Norris burst the dot com bubble.', 836.99, 10, 10, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (96, 'uY396', 'A96: Vados', 'A96: Jennifer Parker', 'Chuck Norris''s keyboard doesn''t have a Ctrl key because nothing controls Chuck Norris.', 550.99, 10, 10, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (97, 'esO97', 'A97: Cell', 'A97: Marty McFly', 'Chuck Norris solved the Travelling Salesman problem in O(1) time.', 203.99, 10, 10, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (98, 'k7A98', 'A98: Tien', 'A98: Marvin Berry', 'Chuck Norris doesn''t delete files, he blows them away.', 900.99, 10, 10, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (99, 'cZt99', 'A99: Raditz', 'A99: Jennifer Parker', 'Chuck Norris doesn''t get compiler errors, the language changes itself to accommodate Chuck Norris.', 214.99, 10, 10, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (100, 'lPG100', 'A100: Super Saiyan Blue Goku', 'A100: Skinhead', 'Chuck Norris doesn''t get compiler errors, the language changes itself to accommodate Chuck Norris.', 900.99, 10, 10, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (101, 'nPB101', 'A101: Yamcha', 'A101: Goldie Wilson', 'Chuck Norris can binary search unsorted data.', 926.99, 10, 11, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (102, 'Whk102', 'A102: Grandpa Gohan', 'A102: Sam Baines', 'Chuck Norris doesn''t pair program.', 161.99, 10, 11, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (103, 'bzd103', 'A103: Baby', 'A103: Sam Baines', 'Chuck Norris compresses his files by doing a flying round house kick to the hard drive.', 133.99, 10, 11, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (104, 'bJf104', 'A104: Goten', 'A104: Linda McFly', 'Chuck Norris rewrote the Google search engine from scratch.', 133.99, 10, 11, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (105, '36b105', 'A105: Chaozu', 'A105: Match', 'Chuck Norris doesn''t need a java compiler, he goes straight to .war', 997.99, 10, 11, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (106, 'bFA106', 'A106: Bulma', 'A106: Lorraine Baines', 'Chuck Norris knows the last digit of PI.', 614.99, 10, 11, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (107, 'TWg107', 'A107: Guru', 'A107: Lorraine Baines', 'Chuck Norris breaks RSA 128-bit encrypted codes in milliseconds.', 357.99, 10, 11, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (108, '5rI108', 'A108: Super Saiyan Vegeta', 'A108: Mr. Peabody', 'All arrays Chuck Norris declares are of infinite size, because Chuck Norris knows no bounds.', 559.99, 10, 11, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (109, 'Gkm109', 'A109: Jaco', 'A109: Match', '"It works on my machine" always holds true for Chuck Norris.', 414.99, 10, 11, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (110, 'fmV110', 'A110: Caulifla', 'A110: Mark Dixon', 'Chuck Norris doesn''t use a computer because a computer does everything slower than Chuck Norris.', 706.99, 10, 11, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (111, '8gT111', 'A111: Super Saiyan Goku', 'A111: Goldie Wilson', 'There is no Esc key on Chuck Norris'' keyboard, because no one escapes Chuck Norris.', 758.99, 10, 12, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (112, 'uOC112', 'A112: Android 20', 'A112: Marty McFly', 'When Chuck Norris presses Ctrl+Alt+Delete, worldwide computer restart is initiated.', 888.99, 10, 12, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (113, 'M7o113', 'A113: Uh Shenlong', 'A113: Dr. Emmett Brown', 'Chuck Norris can binary search unsorted data.', 126.99, 10, 12, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (114, 'Dpk114', 'A114: Super Saiyan Goten', 'A114: Sam Baines', 'Chuck Norris never gets a syntax error. Instead, the language gets a DoesNotConformToChuck error.', 641.99, 10, 12, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (115, 'iBx115', 'A115: Zamasu', 'A115: Dave McFly', 'Chuck Norris can solve the Towers of Hanoi in one move.', 775.99, 10, 12, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (116, '5B1116', 'A116: Vegito', 'A116: Milton Baines', 'Chuck Norris doesn''t program with a keyboard. He stares the computer down until it does what he wants.', 875.99, 10, 12, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (117, 'npy117', 'A117: Yajirobe', 'A117: Goldie Wilson', 'There is no Esc key on Chuck Norris'' keyboard, because no one escapes Chuck Norris.', 289.99, 10, 12, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (118, '0Cb118', 'A118: Vados', 'A118: Stella Baines', 'Chuck Norris burst the dot com bubble.', 811.99, 10, 12, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (119, '5GC119', 'A119: Hit', 'A119: Mark Dixon', 'Chuck Norris does not use revision control software. None of his code has ever needed revision.', 573.99, 10, 12, false)
insert into available_instruments (id, code, name, mark, description, price, quantity, type_id, archived) values (120, 'nhL120', 'A120: Future Trunks', 'A120: Mark Dixon', 'Anonymous methods and anonymous types are really all called Chuck Norris. They just don''t like to boast.', 200.99, 10, 12, false)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------- Altering instrument_id_seq --------------------------------------------------------------------------------------
alter sequence instrument_id_seq restart with 121;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------- Inserting instrument images --------------------------------------------------------------------------------------
insert into instrument_images (instrument_id, images_id) values (1, 1);
insert into instrument_images (instrument_id, images_id) values (1, 2);
insert into instrument_images (instrument_id, images_id) values (1, 3);
insert into instrument_images (instrument_id, images_id) values (1, 4);
insert into instrument_images (instrument_id, images_id) values (1, 5);
insert into instrument_images (instrument_id, images_id) values (1, 6);
insert into instrument_images (instrument_id, images_id) values (1, 7);
insert into instrument_images (instrument_id, images_id) values (1, 8);
insert into instrument_images (instrument_id, images_id) values (1, 9);
insert into instrument_images (instrument_id, images_id) values (1, 10);
insert into instrument_images (instrument_id, images_id) values (2, 11);
insert into instrument_images (instrument_id, images_id) values (2, 12);
insert into instrument_images (instrument_id, images_id) values (2, 13);
insert into instrument_images (instrument_id, images_id) values (2, 14);
insert into instrument_images (instrument_id, images_id) values (2, 15);
insert into instrument_images (instrument_id, images_id) values (2, 16);
insert into instrument_images (instrument_id, images_id) values (2, 17);
insert into instrument_images (instrument_id, images_id) values (2, 18);
insert into instrument_images (instrument_id, images_id) values (2, 19);
insert into instrument_images (instrument_id, images_id) values (2, 20);
insert into instrument_images (instrument_id, images_id) values (3, 21);
insert into instrument_images (instrument_id, images_id) values (3, 22);
insert into instrument_images (instrument_id, images_id) values (3, 23);
insert into instrument_images (instrument_id, images_id) values (3, 24);
insert into instrument_images (instrument_id, images_id) values (3, 25);
insert into instrument_images (instrument_id, images_id) values (3, 26);
insert into instrument_images (instrument_id, images_id) values (3, 27);
insert into instrument_images (instrument_id, images_id) values (3, 28);
insert into instrument_images (instrument_id, images_id) values (3, 29);
insert into instrument_images (instrument_id, images_id) values (3, 30);
insert into instrument_images (instrument_id, images_id) values (4, 31);
insert into instrument_images (instrument_id, images_id) values (4, 32);
insert into instrument_images (instrument_id, images_id) values (4, 33);
insert into instrument_images (instrument_id, images_id) values (4, 34);
insert into instrument_images (instrument_id, images_id) values (4, 35);
insert into instrument_images (instrument_id, images_id) values (4, 36);
insert into instrument_images (instrument_id, images_id) values (4, 37);
insert into instrument_images (instrument_id, images_id) values (4, 38);
insert into instrument_images (instrument_id, images_id) values (4, 39);
insert into instrument_images (instrument_id, images_id) values (4, 40);
insert into instrument_images (instrument_id, images_id) values (5, 41);
insert into instrument_images (instrument_id, images_id) values (5, 42);
insert into instrument_images (instrument_id, images_id) values (5, 43);
insert into instrument_images (instrument_id, images_id) values (5, 44);
insert into instrument_images (instrument_id, images_id) values (5, 45);
insert into instrument_images (instrument_id, images_id) values (5, 46);
insert into instrument_images (instrument_id, images_id) values (5, 47);
insert into instrument_images (instrument_id, images_id) values (5, 48);
insert into instrument_images (instrument_id, images_id) values (5, 49);
insert into instrument_images (instrument_id, images_id) values (5, 50);
insert into instrument_images (instrument_id, images_id) values (6, 51);
insert into instrument_images (instrument_id, images_id) values (6, 52);
insert into instrument_images (instrument_id, images_id) values (6, 53);
insert into instrument_images (instrument_id, images_id) values (6, 54);
insert into instrument_images (instrument_id, images_id) values (6, 55);
insert into instrument_images (instrument_id, images_id) values (6, 56);
insert into instrument_images (instrument_id, images_id) values (6, 57);
insert into instrument_images (instrument_id, images_id) values (6, 58);
insert into instrument_images (instrument_id, images_id) values (6, 59);
insert into instrument_images (instrument_id, images_id) values (6, 60);
insert into instrument_images (instrument_id, images_id) values (7, 61);
insert into instrument_images (instrument_id, images_id) values (7, 62);
insert into instrument_images (instrument_id, images_id) values (7, 63);
insert into instrument_images (instrument_id, images_id) values (7, 64);
insert into instrument_images (instrument_id, images_id) values (7, 65);
insert into instrument_images (instrument_id, images_id) values (7, 66);
insert into instrument_images (instrument_id, images_id) values (7, 67);
insert into instrument_images (instrument_id, images_id) values (7, 68);
insert into instrument_images (instrument_id, images_id) values (7, 69);
insert into instrument_images (instrument_id, images_id) values (7, 70);
insert into instrument_images (instrument_id, images_id) values (8, 71);
insert into instrument_images (instrument_id, images_id) values (8, 72);
insert into instrument_images (instrument_id, images_id) values (8, 73);
insert into instrument_images (instrument_id, images_id) values (8, 74);
insert into instrument_images (instrument_id, images_id) values (8, 75);
insert into instrument_images (instrument_id, images_id) values (8, 76);
insert into instrument_images (instrument_id, images_id) values (8, 77);
insert into instrument_images (instrument_id, images_id) values (8, 78);
insert into instrument_images (instrument_id, images_id) values (8, 79);
insert into instrument_images (instrument_id, images_id) values (8, 80);
insert into instrument_images (instrument_id, images_id) values (9, 81);
insert into instrument_images (instrument_id, images_id) values (9, 82);
insert into instrument_images (instrument_id, images_id) values (9, 83);
insert into instrument_images (instrument_id, images_id) values (9, 84);
insert into instrument_images (instrument_id, images_id) values (9, 85);
insert into instrument_images (instrument_id, images_id) values (9, 86);
insert into instrument_images (instrument_id, images_id) values (9, 87);
insert into instrument_images (instrument_id, images_id) values (9, 88);
insert into instrument_images (instrument_id, images_id) values (9, 89);
insert into instrument_images (instrument_id, images_id) values (9, 90);
insert into instrument_images (instrument_id, images_id) values (10, 91);
insert into instrument_images (instrument_id, images_id) values (10, 92);
insert into instrument_images (instrument_id, images_id) values (10, 93);
insert into instrument_images (instrument_id, images_id) values (10, 94);
insert into instrument_images (instrument_id, images_id) values (10, 95);
insert into instrument_images (instrument_id, images_id) values (10, 96);
insert into instrument_images (instrument_id, images_id) values (10, 97);
insert into instrument_images (instrument_id, images_id) values (10, 98);
insert into instrument_images (instrument_id, images_id) values (10, 99);
insert into instrument_images (instrument_id, images_id) values (10, 100);
insert into instrument_images (instrument_id, images_id) values (11, 101);
insert into instrument_images (instrument_id, images_id) values (11, 102);
insert into instrument_images (instrument_id, images_id) values (11, 103);
insert into instrument_images (instrument_id, images_id) values (11, 104);
insert into instrument_images (instrument_id, images_id) values (11, 105);
insert into instrument_images (instrument_id, images_id) values (11, 106);
insert into instrument_images (instrument_id, images_id) values (11, 107);
insert into instrument_images (instrument_id, images_id) values (11, 108);
insert into instrument_images (instrument_id, images_id) values (11, 109);
insert into instrument_images (instrument_id, images_id) values (11, 110);
insert into instrument_images (instrument_id, images_id) values (12, 111);
insert into instrument_images (instrument_id, images_id) values (12, 112);
insert into instrument_images (instrument_id, images_id) values (12, 113);
insert into instrument_images (instrument_id, images_id) values (12, 114);
insert into instrument_images (instrument_id, images_id) values (12, 115);
insert into instrument_images (instrument_id, images_id) values (12, 116);
insert into instrument_images (instrument_id, images_id) values (12, 117);
insert into instrument_images (instrument_id, images_id) values (12, 118);
insert into instrument_images (instrument_id, images_id) values (12, 119);
insert into instrument_images (instrument_id, images_id) values (12, 120);
insert into instrument_images (instrument_id, images_id) values (13, 121);
insert into instrument_images (instrument_id, images_id) values (13, 122);
insert into instrument_images (instrument_id, images_id) values (13, 123);
insert into instrument_images (instrument_id, images_id) values (13, 124);
insert into instrument_images (instrument_id, images_id) values (13, 125);
insert into instrument_images (instrument_id, images_id) values (13, 126);
insert into instrument_images (instrument_id, images_id) values (13, 127);
insert into instrument_images (instrument_id, images_id) values (13, 128);
insert into instrument_images (instrument_id, images_id) values (13, 129);
insert into instrument_images (instrument_id, images_id) values (13, 130);
insert into instrument_images (instrument_id, images_id) values (14, 131);
insert into instrument_images (instrument_id, images_id) values (14, 132);
insert into instrument_images (instrument_id, images_id) values (14, 133);
insert into instrument_images (instrument_id, images_id) values (14, 134);
insert into instrument_images (instrument_id, images_id) values (14, 135);
insert into instrument_images (instrument_id, images_id) values (14, 136);
insert into instrument_images (instrument_id, images_id) values (14, 137);
insert into instrument_images (instrument_id, images_id) values (14, 138);
insert into instrument_images (instrument_id, images_id) values (14, 139);
insert into instrument_images (instrument_id, images_id) values (14, 140);
insert into instrument_images (instrument_id, images_id) values (15, 141);
insert into instrument_images (instrument_id, images_id) values (15, 142);
insert into instrument_images (instrument_id, images_id) values (15, 143);
insert into instrument_images (instrument_id, images_id) values (15, 144);
insert into instrument_images (instrument_id, images_id) values (15, 145);
insert into instrument_images (instrument_id, images_id) values (15, 146);
insert into instrument_images (instrument_id, images_id) values (15, 147);
insert into instrument_images (instrument_id, images_id) values (15, 148);
insert into instrument_images (instrument_id, images_id) values (15, 149);
insert into instrument_images (instrument_id, images_id) values (15, 150);
insert into instrument_images (instrument_id, images_id) values (16, 151);
insert into instrument_images (instrument_id, images_id) values (16, 152);
insert into instrument_images (instrument_id, images_id) values (16, 153);
insert into instrument_images (instrument_id, images_id) values (16, 154);
insert into instrument_images (instrument_id, images_id) values (16, 155);
insert into instrument_images (instrument_id, images_id) values (16, 156);
insert into instrument_images (instrument_id, images_id) values (16, 157);
insert into instrument_images (instrument_id, images_id) values (16, 158);
insert into instrument_images (instrument_id, images_id) values (16, 159);
insert into instrument_images (instrument_id, images_id) values (16, 160);
insert into instrument_images (instrument_id, images_id) values (17, 161);
insert into instrument_images (instrument_id, images_id) values (17, 162);
insert into instrument_images (instrument_id, images_id) values (17, 163);
insert into instrument_images (instrument_id, images_id) values (17, 164);
insert into instrument_images (instrument_id, images_id) values (17, 165);
insert into instrument_images (instrument_id, images_id) values (17, 166);
insert into instrument_images (instrument_id, images_id) values (17, 167);
insert into instrument_images (instrument_id, images_id) values (17, 168);
insert into instrument_images (instrument_id, images_id) values (17, 169);
insert into instrument_images (instrument_id, images_id) values (17, 170);
insert into instrument_images (instrument_id, images_id) values (18, 171);
insert into instrument_images (instrument_id, images_id) values (18, 172);
insert into instrument_images (instrument_id, images_id) values (18, 173);
insert into instrument_images (instrument_id, images_id) values (18, 174);
insert into instrument_images (instrument_id, images_id) values (18, 175);
insert into instrument_images (instrument_id, images_id) values (18, 176);
insert into instrument_images (instrument_id, images_id) values (18, 177);
insert into instrument_images (instrument_id, images_id) values (18, 178);
insert into instrument_images (instrument_id, images_id) values (18, 179);
insert into instrument_images (instrument_id, images_id) values (18, 180);
insert into instrument_images (instrument_id, images_id) values (19, 181);
insert into instrument_images (instrument_id, images_id) values (19, 182);
insert into instrument_images (instrument_id, images_id) values (19, 183);
insert into instrument_images (instrument_id, images_id) values (19, 184);
insert into instrument_images (instrument_id, images_id) values (19, 185);
insert into instrument_images (instrument_id, images_id) values (19, 186);
insert into instrument_images (instrument_id, images_id) values (19, 187);
insert into instrument_images (instrument_id, images_id) values (19, 188);
insert into instrument_images (instrument_id, images_id) values (19, 189);
insert into instrument_images (instrument_id, images_id) values (19, 190);
insert into instrument_images (instrument_id, images_id) values (20, 191);
insert into instrument_images (instrument_id, images_id) values (20, 192);
insert into instrument_images (instrument_id, images_id) values (20, 193);
insert into instrument_images (instrument_id, images_id) values (20, 194);
insert into instrument_images (instrument_id, images_id) values (20, 195);
insert into instrument_images (instrument_id, images_id) values (20, 196);
insert into instrument_images (instrument_id, images_id) values (20, 197);
insert into instrument_images (instrument_id, images_id) values (20, 198);
insert into instrument_images (instrument_id, images_id) values (20, 199);
insert into instrument_images (instrument_id, images_id) values (20, 200);
insert into instrument_images (instrument_id, images_id) values (21, 201);
insert into instrument_images (instrument_id, images_id) values (21, 202);
insert into instrument_images (instrument_id, images_id) values (21, 203);
insert into instrument_images (instrument_id, images_id) values (21, 204);
insert into instrument_images (instrument_id, images_id) values (21, 205);
insert into instrument_images (instrument_id, images_id) values (21, 206);
insert into instrument_images (instrument_id, images_id) values (21, 207);
insert into instrument_images (instrument_id, images_id) values (21, 208);
insert into instrument_images (instrument_id, images_id) values (21, 209);
insert into instrument_images (instrument_id, images_id) values (21, 210);
insert into instrument_images (instrument_id, images_id) values (22, 211);
insert into instrument_images (instrument_id, images_id) values (22, 212);
insert into instrument_images (instrument_id, images_id) values (22, 213);
insert into instrument_images (instrument_id, images_id) values (22, 214);
insert into instrument_images (instrument_id, images_id) values (22, 215);
insert into instrument_images (instrument_id, images_id) values (22, 216);
insert into instrument_images (instrument_id, images_id) values (22, 217);
insert into instrument_images (instrument_id, images_id) values (22, 218);
insert into instrument_images (instrument_id, images_id) values (22, 219);
insert into instrument_images (instrument_id, images_id) values (22, 220);
insert into instrument_images (instrument_id, images_id) values (23, 221);
insert into instrument_images (instrument_id, images_id) values (23, 222);
insert into instrument_images (instrument_id, images_id) values (23, 223);
insert into instrument_images (instrument_id, images_id) values (23, 224);
insert into instrument_images (instrument_id, images_id) values (23, 225);
insert into instrument_images (instrument_id, images_id) values (23, 226);
insert into instrument_images (instrument_id, images_id) values (23, 227);
insert into instrument_images (instrument_id, images_id) values (23, 228);
insert into instrument_images (instrument_id, images_id) values (23, 229);
insert into instrument_images (instrument_id, images_id) values (23, 230);
insert into instrument_images (instrument_id, images_id) values (24, 231);
insert into instrument_images (instrument_id, images_id) values (24, 232);
insert into instrument_images (instrument_id, images_id) values (24, 233);
insert into instrument_images (instrument_id, images_id) values (24, 234);
insert into instrument_images (instrument_id, images_id) values (24, 235);
insert into instrument_images (instrument_id, images_id) values (24, 236);
insert into instrument_images (instrument_id, images_id) values (24, 237);
insert into instrument_images (instrument_id, images_id) values (24, 238);
insert into instrument_images (instrument_id, images_id) values (24, 239);
insert into instrument_images (instrument_id, images_id) values (24, 240);
insert into instrument_images (instrument_id, images_id) values (25, 241);
insert into instrument_images (instrument_id, images_id) values (25, 242);
insert into instrument_images (instrument_id, images_id) values (25, 243);
insert into instrument_images (instrument_id, images_id) values (25, 244);
insert into instrument_images (instrument_id, images_id) values (25, 245);
insert into instrument_images (instrument_id, images_id) values (25, 246);
insert into instrument_images (instrument_id, images_id) values (25, 247);
insert into instrument_images (instrument_id, images_id) values (25, 248);
insert into instrument_images (instrument_id, images_id) values (25, 249);
insert into instrument_images (instrument_id, images_id) values (25, 250);
insert into instrument_images (instrument_id, images_id) values (26, 251);
insert into instrument_images (instrument_id, images_id) values (26, 252);
insert into instrument_images (instrument_id, images_id) values (26, 253);
insert into instrument_images (instrument_id, images_id) values (26, 254);
insert into instrument_images (instrument_id, images_id) values (26, 255);
insert into instrument_images (instrument_id, images_id) values (26, 256);
insert into instrument_images (instrument_id, images_id) values (26, 257);
insert into instrument_images (instrument_id, images_id) values (26, 258);
insert into instrument_images (instrument_id, images_id) values (26, 259);
insert into instrument_images (instrument_id, images_id) values (26, 260);
insert into instrument_images (instrument_id, images_id) values (27, 261);
insert into instrument_images (instrument_id, images_id) values (27, 262);
insert into instrument_images (instrument_id, images_id) values (27, 263);
insert into instrument_images (instrument_id, images_id) values (27, 264);
insert into instrument_images (instrument_id, images_id) values (27, 265);
insert into instrument_images (instrument_id, images_id) values (27, 266);
insert into instrument_images (instrument_id, images_id) values (27, 267);
insert into instrument_images (instrument_id, images_id) values (27, 268);
insert into instrument_images (instrument_id, images_id) values (27, 269);
insert into instrument_images (instrument_id, images_id) values (27, 270);
insert into instrument_images (instrument_id, images_id) values (28, 271);
insert into instrument_images (instrument_id, images_id) values (28, 272);
insert into instrument_images (instrument_id, images_id) values (28, 273);
insert into instrument_images (instrument_id, images_id) values (28, 274);
insert into instrument_images (instrument_id, images_id) values (28, 275);
insert into instrument_images (instrument_id, images_id) values (28, 276);
insert into instrument_images (instrument_id, images_id) values (28, 277);
insert into instrument_images (instrument_id, images_id) values (28, 278);
insert into instrument_images (instrument_id, images_id) values (28, 279);
insert into instrument_images (instrument_id, images_id) values (28, 280);
insert into instrument_images (instrument_id, images_id) values (29, 281);
insert into instrument_images (instrument_id, images_id) values (29, 282);
insert into instrument_images (instrument_id, images_id) values (29, 283);
insert into instrument_images (instrument_id, images_id) values (29, 284);
insert into instrument_images (instrument_id, images_id) values (29, 285);
insert into instrument_images (instrument_id, images_id) values (29, 286);
insert into instrument_images (instrument_id, images_id) values (29, 287);
insert into instrument_images (instrument_id, images_id) values (29, 288);
insert into instrument_images (instrument_id, images_id) values (29, 289);
insert into instrument_images (instrument_id, images_id) values (29, 290);
insert into instrument_images (instrument_id, images_id) values (30, 291);
insert into instrument_images (instrument_id, images_id) values (30, 292);
insert into instrument_images (instrument_id, images_id) values (30, 293);
insert into instrument_images (instrument_id, images_id) values (30, 294);
insert into instrument_images (instrument_id, images_id) values (30, 295);
insert into instrument_images (instrument_id, images_id) values (30, 296);
insert into instrument_images (instrument_id, images_id) values (30, 297);
insert into instrument_images (instrument_id, images_id) values (30, 298);
insert into instrument_images (instrument_id, images_id) values (30, 299);
insert into instrument_images (instrument_id, images_id) values (30, 300);
insert into instrument_images (instrument_id, images_id) values (31, 301);
insert into instrument_images (instrument_id, images_id) values (31, 302);
insert into instrument_images (instrument_id, images_id) values (31, 303);
insert into instrument_images (instrument_id, images_id) values (31, 304);
insert into instrument_images (instrument_id, images_id) values (31, 305);
insert into instrument_images (instrument_id, images_id) values (31, 306);
insert into instrument_images (instrument_id, images_id) values (31, 307);
insert into instrument_images (instrument_id, images_id) values (31, 308);
insert into instrument_images (instrument_id, images_id) values (31, 309);
insert into instrument_images (instrument_id, images_id) values (31, 310);
insert into instrument_images (instrument_id, images_id) values (32, 311);
insert into instrument_images (instrument_id, images_id) values (32, 312);
insert into instrument_images (instrument_id, images_id) values (32, 313);
insert into instrument_images (instrument_id, images_id) values (32, 314);
insert into instrument_images (instrument_id, images_id) values (32, 315);
insert into instrument_images (instrument_id, images_id) values (32, 316);
insert into instrument_images (instrument_id, images_id) values (32, 317);
insert into instrument_images (instrument_id, images_id) values (32, 318);
insert into instrument_images (instrument_id, images_id) values (32, 319);
insert into instrument_images (instrument_id, images_id) values (32, 320);
insert into instrument_images (instrument_id, images_id) values (33, 321);
insert into instrument_images (instrument_id, images_id) values (33, 322);
insert into instrument_images (instrument_id, images_id) values (33, 323);
insert into instrument_images (instrument_id, images_id) values (33, 324);
insert into instrument_images (instrument_id, images_id) values (33, 325);
insert into instrument_images (instrument_id, images_id) values (33, 326);
insert into instrument_images (instrument_id, images_id) values (33, 327);
insert into instrument_images (instrument_id, images_id) values (33, 328);
insert into instrument_images (instrument_id, images_id) values (33, 329);
insert into instrument_images (instrument_id, images_id) values (33, 330);
insert into instrument_images (instrument_id, images_id) values (34, 331);
insert into instrument_images (instrument_id, images_id) values (34, 332);
insert into instrument_images (instrument_id, images_id) values (34, 333);
insert into instrument_images (instrument_id, images_id) values (34, 334);
insert into instrument_images (instrument_id, images_id) values (34, 335);
insert into instrument_images (instrument_id, images_id) values (34, 336);
insert into instrument_images (instrument_id, images_id) values (34, 337);
insert into instrument_images (instrument_id, images_id) values (34, 338);
insert into instrument_images (instrument_id, images_id) values (34, 339);
insert into instrument_images (instrument_id, images_id) values (34, 340);
insert into instrument_images (instrument_id, images_id) values (35, 341);
insert into instrument_images (instrument_id, images_id) values (35, 342);
insert into instrument_images (instrument_id, images_id) values (35, 343);
insert into instrument_images (instrument_id, images_id) values (35, 344);
insert into instrument_images (instrument_id, images_id) values (35, 345);
insert into instrument_images (instrument_id, images_id) values (35, 346);
insert into instrument_images (instrument_id, images_id) values (35, 347);
insert into instrument_images (instrument_id, images_id) values (35, 348);
insert into instrument_images (instrument_id, images_id) values (35, 349);
insert into instrument_images (instrument_id, images_id) values (35, 350);
insert into instrument_images (instrument_id, images_id) values (36, 351);
insert into instrument_images (instrument_id, images_id) values (36, 352);
insert into instrument_images (instrument_id, images_id) values (36, 353);
insert into instrument_images (instrument_id, images_id) values (36, 354);
insert into instrument_images (instrument_id, images_id) values (36, 355);
insert into instrument_images (instrument_id, images_id) values (36, 356);
insert into instrument_images (instrument_id, images_id) values (36, 357);
insert into instrument_images (instrument_id, images_id) values (36, 358);
insert into instrument_images (instrument_id, images_id) values (36, 359);
insert into instrument_images (instrument_id, images_id) values (36, 360);
insert into instrument_images (instrument_id, images_id) values (37, 361);
insert into instrument_images (instrument_id, images_id) values (37, 362);
insert into instrument_images (instrument_id, images_id) values (37, 363);
insert into instrument_images (instrument_id, images_id) values (37, 364);
insert into instrument_images (instrument_id, images_id) values (37, 365);
insert into instrument_images (instrument_id, images_id) values (37, 366);
insert into instrument_images (instrument_id, images_id) values (37, 367);
insert into instrument_images (instrument_id, images_id) values (37, 368);
insert into instrument_images (instrument_id, images_id) values (37, 369);
insert into instrument_images (instrument_id, images_id) values (37, 370);
insert into instrument_images (instrument_id, images_id) values (38, 371);
insert into instrument_images (instrument_id, images_id) values (38, 372);
insert into instrument_images (instrument_id, images_id) values (38, 373);
insert into instrument_images (instrument_id, images_id) values (38, 374);
insert into instrument_images (instrument_id, images_id) values (38, 375);
insert into instrument_images (instrument_id, images_id) values (38, 376);
insert into instrument_images (instrument_id, images_id) values (38, 377);
insert into instrument_images (instrument_id, images_id) values (38, 378);
insert into instrument_images (instrument_id, images_id) values (38, 379);
insert into instrument_images (instrument_id, images_id) values (38, 380);
insert into instrument_images (instrument_id, images_id) values (39, 381);
insert into instrument_images (instrument_id, images_id) values (39, 382);
insert into instrument_images (instrument_id, images_id) values (39, 383);
insert into instrument_images (instrument_id, images_id) values (39, 384);
insert into instrument_images (instrument_id, images_id) values (39, 385);
insert into instrument_images (instrument_id, images_id) values (39, 386);
insert into instrument_images (instrument_id, images_id) values (39, 387);
insert into instrument_images (instrument_id, images_id) values (39, 388);
insert into instrument_images (instrument_id, images_id) values (39, 389);
insert into instrument_images (instrument_id, images_id) values (39, 390);
insert into instrument_images (instrument_id, images_id) values (40, 391);
insert into instrument_images (instrument_id, images_id) values (40, 392);
insert into instrument_images (instrument_id, images_id) values (40, 393);
insert into instrument_images (instrument_id, images_id) values (40, 394);
insert into instrument_images (instrument_id, images_id) values (40, 395);
insert into instrument_images (instrument_id, images_id) values (40, 396);
insert into instrument_images (instrument_id, images_id) values (40, 397);
insert into instrument_images (instrument_id, images_id) values (40, 398);
insert into instrument_images (instrument_id, images_id) values (40, 399);
insert into instrument_images (instrument_id, images_id) values (40, 400);
insert into instrument_images (instrument_id, images_id) values (41, 401);
insert into instrument_images (instrument_id, images_id) values (41, 402);
insert into instrument_images (instrument_id, images_id) values (41, 403);
insert into instrument_images (instrument_id, images_id) values (41, 404);
insert into instrument_images (instrument_id, images_id) values (41, 405);
insert into instrument_images (instrument_id, images_id) values (41, 406);
insert into instrument_images (instrument_id, images_id) values (41, 407);
insert into instrument_images (instrument_id, images_id) values (41, 408);
insert into instrument_images (instrument_id, images_id) values (41, 409);
insert into instrument_images (instrument_id, images_id) values (41, 410);
insert into instrument_images (instrument_id, images_id) values (42, 411);
insert into instrument_images (instrument_id, images_id) values (42, 412);
insert into instrument_images (instrument_id, images_id) values (42, 413);
insert into instrument_images (instrument_id, images_id) values (42, 414);
insert into instrument_images (instrument_id, images_id) values (42, 415);
insert into instrument_images (instrument_id, images_id) values (42, 416);
insert into instrument_images (instrument_id, images_id) values (42, 417);
insert into instrument_images (instrument_id, images_id) values (42, 418);
insert into instrument_images (instrument_id, images_id) values (42, 419);
insert into instrument_images (instrument_id, images_id) values (42, 420);
insert into instrument_images (instrument_id, images_id) values (43, 421);
insert into instrument_images (instrument_id, images_id) values (43, 422);
insert into instrument_images (instrument_id, images_id) values (43, 423);
insert into instrument_images (instrument_id, images_id) values (43, 424);
insert into instrument_images (instrument_id, images_id) values (43, 425);
insert into instrument_images (instrument_id, images_id) values (43, 426);
insert into instrument_images (instrument_id, images_id) values (43, 427);
insert into instrument_images (instrument_id, images_id) values (43, 428);
insert into instrument_images (instrument_id, images_id) values (43, 429);
insert into instrument_images (instrument_id, images_id) values (43, 430);
insert into instrument_images (instrument_id, images_id) values (44, 431);
insert into instrument_images (instrument_id, images_id) values (44, 432);
insert into instrument_images (instrument_id, images_id) values (44, 433);
insert into instrument_images (instrument_id, images_id) values (44, 434);
insert into instrument_images (instrument_id, images_id) values (44, 435);
insert into instrument_images (instrument_id, images_id) values (44, 436);
insert into instrument_images (instrument_id, images_id) values (44, 437);
insert into instrument_images (instrument_id, images_id) values (44, 438);
insert into instrument_images (instrument_id, images_id) values (44, 439);
insert into instrument_images (instrument_id, images_id) values (44, 440);
insert into instrument_images (instrument_id, images_id) values (45, 441);
insert into instrument_images (instrument_id, images_id) values (45, 442);
insert into instrument_images (instrument_id, images_id) values (45, 443);
insert into instrument_images (instrument_id, images_id) values (45, 444);
insert into instrument_images (instrument_id, images_id) values (45, 445);
insert into instrument_images (instrument_id, images_id) values (45, 446);
insert into instrument_images (instrument_id, images_id) values (45, 447);
insert into instrument_images (instrument_id, images_id) values (45, 448);
insert into instrument_images (instrument_id, images_id) values (45, 449);
insert into instrument_images (instrument_id, images_id) values (45, 450);
insert into instrument_images (instrument_id, images_id) values (46, 451);
insert into instrument_images (instrument_id, images_id) values (46, 452);
insert into instrument_images (instrument_id, images_id) values (46, 453);
insert into instrument_images (instrument_id, images_id) values (46, 454);
insert into instrument_images (instrument_id, images_id) values (46, 455);
insert into instrument_images (instrument_id, images_id) values (46, 456);
insert into instrument_images (instrument_id, images_id) values (46, 457);
insert into instrument_images (instrument_id, images_id) values (46, 458);
insert into instrument_images (instrument_id, images_id) values (46, 459);
insert into instrument_images (instrument_id, images_id) values (46, 460);
insert into instrument_images (instrument_id, images_id) values (47, 461);
insert into instrument_images (instrument_id, images_id) values (47, 462);
insert into instrument_images (instrument_id, images_id) values (47, 463);
insert into instrument_images (instrument_id, images_id) values (47, 464);
insert into instrument_images (instrument_id, images_id) values (47, 465);
insert into instrument_images (instrument_id, images_id) values (47, 466);
insert into instrument_images (instrument_id, images_id) values (47, 467);
insert into instrument_images (instrument_id, images_id) values (47, 468);
insert into instrument_images (instrument_id, images_id) values (47, 469);
insert into instrument_images (instrument_id, images_id) values (47, 470);
insert into instrument_images (instrument_id, images_id) values (48, 471);
insert into instrument_images (instrument_id, images_id) values (48, 472);
insert into instrument_images (instrument_id, images_id) values (48, 473);
insert into instrument_images (instrument_id, images_id) values (48, 474);
insert into instrument_images (instrument_id, images_id) values (48, 475);
insert into instrument_images (instrument_id, images_id) values (48, 476);
insert into instrument_images (instrument_id, images_id) values (48, 477);
insert into instrument_images (instrument_id, images_id) values (48, 478);
insert into instrument_images (instrument_id, images_id) values (48, 479);
insert into instrument_images (instrument_id, images_id) values (48, 480);
insert into instrument_images (instrument_id, images_id) values (49, 481);
insert into instrument_images (instrument_id, images_id) values (49, 482);
insert into instrument_images (instrument_id, images_id) values (49, 483);
insert into instrument_images (instrument_id, images_id) values (49, 484);
insert into instrument_images (instrument_id, images_id) values (49, 485);
insert into instrument_images (instrument_id, images_id) values (49, 486);
insert into instrument_images (instrument_id, images_id) values (49, 487);
insert into instrument_images (instrument_id, images_id) values (49, 488);
insert into instrument_images (instrument_id, images_id) values (49, 489);
insert into instrument_images (instrument_id, images_id) values (49, 490);
insert into instrument_images (instrument_id, images_id) values (50, 491);
insert into instrument_images (instrument_id, images_id) values (50, 492);
insert into instrument_images (instrument_id, images_id) values (50, 493);
insert into instrument_images (instrument_id, images_id) values (50, 494);
insert into instrument_images (instrument_id, images_id) values (50, 495);
insert into instrument_images (instrument_id, images_id) values (50, 496);
insert into instrument_images (instrument_id, images_id) values (50, 497);
insert into instrument_images (instrument_id, images_id) values (50, 498);
insert into instrument_images (instrument_id, images_id) values (50, 499);
insert into instrument_images (instrument_id, images_id) values (50, 500);
insert into instrument_images (instrument_id, images_id) values (51, 501);
insert into instrument_images (instrument_id, images_id) values (51, 502);
insert into instrument_images (instrument_id, images_id) values (51, 503);
insert into instrument_images (instrument_id, images_id) values (51, 504);
insert into instrument_images (instrument_id, images_id) values (51, 505);
insert into instrument_images (instrument_id, images_id) values (51, 506);
insert into instrument_images (instrument_id, images_id) values (51, 507);
insert into instrument_images (instrument_id, images_id) values (51, 508);
insert into instrument_images (instrument_id, images_id) values (51, 509);
insert into instrument_images (instrument_id, images_id) values (51, 510);
insert into instrument_images (instrument_id, images_id) values (52, 511);
insert into instrument_images (instrument_id, images_id) values (52, 512);
insert into instrument_images (instrument_id, images_id) values (52, 513);
insert into instrument_images (instrument_id, images_id) values (52, 514);
insert into instrument_images (instrument_id, images_id) values (52, 515);
insert into instrument_images (instrument_id, images_id) values (52, 516);
insert into instrument_images (instrument_id, images_id) values (52, 517);
insert into instrument_images (instrument_id, images_id) values (52, 518);
insert into instrument_images (instrument_id, images_id) values (52, 519);
insert into instrument_images (instrument_id, images_id) values (52, 520);
insert into instrument_images (instrument_id, images_id) values (53, 521);
insert into instrument_images (instrument_id, images_id) values (53, 522);
insert into instrument_images (instrument_id, images_id) values (53, 523);
insert into instrument_images (instrument_id, images_id) values (53, 524);
insert into instrument_images (instrument_id, images_id) values (53, 525);
insert into instrument_images (instrument_id, images_id) values (53, 526);
insert into instrument_images (instrument_id, images_id) values (53, 527);
insert into instrument_images (instrument_id, images_id) values (53, 528);
insert into instrument_images (instrument_id, images_id) values (53, 529);
insert into instrument_images (instrument_id, images_id) values (53, 530);
insert into instrument_images (instrument_id, images_id) values (54, 531);
insert into instrument_images (instrument_id, images_id) values (54, 532);
insert into instrument_images (instrument_id, images_id) values (54, 533);
insert into instrument_images (instrument_id, images_id) values (54, 534);
insert into instrument_images (instrument_id, images_id) values (54, 535);
insert into instrument_images (instrument_id, images_id) values (54, 536);
insert into instrument_images (instrument_id, images_id) values (54, 537);
insert into instrument_images (instrument_id, images_id) values (54, 538);
insert into instrument_images (instrument_id, images_id) values (54, 539);
insert into instrument_images (instrument_id, images_id) values (54, 540);
insert into instrument_images (instrument_id, images_id) values (55, 541);
insert into instrument_images (instrument_id, images_id) values (55, 542);
insert into instrument_images (instrument_id, images_id) values (55, 543);
insert into instrument_images (instrument_id, images_id) values (55, 544);
insert into instrument_images (instrument_id, images_id) values (55, 545);
insert into instrument_images (instrument_id, images_id) values (55, 546);
insert into instrument_images (instrument_id, images_id) values (55, 547);
insert into instrument_images (instrument_id, images_id) values (55, 548);
insert into instrument_images (instrument_id, images_id) values (55, 549);
insert into instrument_images (instrument_id, images_id) values (55, 550);
insert into instrument_images (instrument_id, images_id) values (56, 551);
insert into instrument_images (instrument_id, images_id) values (56, 552);
insert into instrument_images (instrument_id, images_id) values (56, 553);
insert into instrument_images (instrument_id, images_id) values (56, 554);
insert into instrument_images (instrument_id, images_id) values (56, 555);
insert into instrument_images (instrument_id, images_id) values (56, 556);
insert into instrument_images (instrument_id, images_id) values (56, 557);
insert into instrument_images (instrument_id, images_id) values (56, 558);
insert into instrument_images (instrument_id, images_id) values (56, 559);
insert into instrument_images (instrument_id, images_id) values (56, 560);
insert into instrument_images (instrument_id, images_id) values (57, 561);
insert into instrument_images (instrument_id, images_id) values (57, 562);
insert into instrument_images (instrument_id, images_id) values (57, 563);
insert into instrument_images (instrument_id, images_id) values (57, 564);
insert into instrument_images (instrument_id, images_id) values (57, 565);
insert into instrument_images (instrument_id, images_id) values (57, 566);
insert into instrument_images (instrument_id, images_id) values (57, 567);
insert into instrument_images (instrument_id, images_id) values (57, 568);
insert into instrument_images (instrument_id, images_id) values (57, 569);
insert into instrument_images (instrument_id, images_id) values (57, 570);
insert into instrument_images (instrument_id, images_id) values (58, 571);
insert into instrument_images (instrument_id, images_id) values (58, 572);
insert into instrument_images (instrument_id, images_id) values (58, 573);
insert into instrument_images (instrument_id, images_id) values (58, 574);
insert into instrument_images (instrument_id, images_id) values (58, 575);
insert into instrument_images (instrument_id, images_id) values (58, 576);
insert into instrument_images (instrument_id, images_id) values (58, 577);
insert into instrument_images (instrument_id, images_id) values (58, 578);
insert into instrument_images (instrument_id, images_id) values (58, 579);
insert into instrument_images (instrument_id, images_id) values (58, 580);
insert into instrument_images (instrument_id, images_id) values (59, 581);
insert into instrument_images (instrument_id, images_id) values (59, 582);
insert into instrument_images (instrument_id, images_id) values (59, 583);
insert into instrument_images (instrument_id, images_id) values (59, 584);
insert into instrument_images (instrument_id, images_id) values (59, 585);
insert into instrument_images (instrument_id, images_id) values (59, 586);
insert into instrument_images (instrument_id, images_id) values (59, 587);
insert into instrument_images (instrument_id, images_id) values (59, 588);
insert into instrument_images (instrument_id, images_id) values (59, 589);
insert into instrument_images (instrument_id, images_id) values (59, 590);
insert into instrument_images (instrument_id, images_id) values (60, 591);
insert into instrument_images (instrument_id, images_id) values (60, 592);
insert into instrument_images (instrument_id, images_id) values (60, 593);
insert into instrument_images (instrument_id, images_id) values (60, 594);
insert into instrument_images (instrument_id, images_id) values (60, 595);
insert into instrument_images (instrument_id, images_id) values (60, 596);
insert into instrument_images (instrument_id, images_id) values (60, 597);
insert into instrument_images (instrument_id, images_id) values (60, 598);
insert into instrument_images (instrument_id, images_id) values (60, 599);
insert into instrument_images (instrument_id, images_id) values (60, 600);
insert into instrument_images (instrument_id, images_id) values (61, 601);
insert into instrument_images (instrument_id, images_id) values (61, 602);
insert into instrument_images (instrument_id, images_id) values (61, 603);
insert into instrument_images (instrument_id, images_id) values (61, 604);
insert into instrument_images (instrument_id, images_id) values (61, 605);
insert into instrument_images (instrument_id, images_id) values (61, 606);
insert into instrument_images (instrument_id, images_id) values (61, 607);
insert into instrument_images (instrument_id, images_id) values (61, 608);
insert into instrument_images (instrument_id, images_id) values (61, 609);
insert into instrument_images (instrument_id, images_id) values (61, 610);
insert into instrument_images (instrument_id, images_id) values (62, 611);
insert into instrument_images (instrument_id, images_id) values (62, 612);
insert into instrument_images (instrument_id, images_id) values (62, 613);
insert into instrument_images (instrument_id, images_id) values (62, 614);
insert into instrument_images (instrument_id, images_id) values (62, 615);
insert into instrument_images (instrument_id, images_id) values (62, 616);
insert into instrument_images (instrument_id, images_id) values (62, 617);
insert into instrument_images (instrument_id, images_id) values (62, 618);
insert into instrument_images (instrument_id, images_id) values (62, 619);
insert into instrument_images (instrument_id, images_id) values (62, 620);
insert into instrument_images (instrument_id, images_id) values (63, 621);
insert into instrument_images (instrument_id, images_id) values (63, 622);
insert into instrument_images (instrument_id, images_id) values (63, 623);
insert into instrument_images (instrument_id, images_id) values (63, 624);
insert into instrument_images (instrument_id, images_id) values (63, 625);
insert into instrument_images (instrument_id, images_id) values (63, 626);
insert into instrument_images (instrument_id, images_id) values (63, 627);
insert into instrument_images (instrument_id, images_id) values (63, 628);
insert into instrument_images (instrument_id, images_id) values (63, 629);
insert into instrument_images (instrument_id, images_id) values (63, 630);
insert into instrument_images (instrument_id, images_id) values (64, 631);
insert into instrument_images (instrument_id, images_id) values (64, 632);
insert into instrument_images (instrument_id, images_id) values (64, 633);
insert into instrument_images (instrument_id, images_id) values (64, 634);
insert into instrument_images (instrument_id, images_id) values (64, 635);
insert into instrument_images (instrument_id, images_id) values (64, 636);
insert into instrument_images (instrument_id, images_id) values (64, 637);
insert into instrument_images (instrument_id, images_id) values (64, 638);
insert into instrument_images (instrument_id, images_id) values (64, 639);
insert into instrument_images (instrument_id, images_id) values (64, 640);
insert into instrument_images (instrument_id, images_id) values (65, 641);
insert into instrument_images (instrument_id, images_id) values (65, 642);
insert into instrument_images (instrument_id, images_id) values (65, 643);
insert into instrument_images (instrument_id, images_id) values (65, 644);
insert into instrument_images (instrument_id, images_id) values (65, 645);
insert into instrument_images (instrument_id, images_id) values (65, 646);
insert into instrument_images (instrument_id, images_id) values (65, 647);
insert into instrument_images (instrument_id, images_id) values (65, 648);
insert into instrument_images (instrument_id, images_id) values (65, 649);
insert into instrument_images (instrument_id, images_id) values (65, 650);
insert into instrument_images (instrument_id, images_id) values (66, 651);
insert into instrument_images (instrument_id, images_id) values (66, 652);
insert into instrument_images (instrument_id, images_id) values (66, 653);
insert into instrument_images (instrument_id, images_id) values (66, 654);
insert into instrument_images (instrument_id, images_id) values (66, 655);
insert into instrument_images (instrument_id, images_id) values (66, 656);
insert into instrument_images (instrument_id, images_id) values (66, 657);
insert into instrument_images (instrument_id, images_id) values (66, 658);
insert into instrument_images (instrument_id, images_id) values (66, 659);
insert into instrument_images (instrument_id, images_id) values (66, 660);
insert into instrument_images (instrument_id, images_id) values (67, 661);
insert into instrument_images (instrument_id, images_id) values (67, 662);
insert into instrument_images (instrument_id, images_id) values (67, 663);
insert into instrument_images (instrument_id, images_id) values (67, 664);
insert into instrument_images (instrument_id, images_id) values (67, 665);
insert into instrument_images (instrument_id, images_id) values (67, 666);
insert into instrument_images (instrument_id, images_id) values (67, 667);
insert into instrument_images (instrument_id, images_id) values (67, 668);
insert into instrument_images (instrument_id, images_id) values (67, 669);
insert into instrument_images (instrument_id, images_id) values (67, 670);
insert into instrument_images (instrument_id, images_id) values (68, 671);
insert into instrument_images (instrument_id, images_id) values (68, 672);
insert into instrument_images (instrument_id, images_id) values (68, 673);
insert into instrument_images (instrument_id, images_id) values (68, 674);
insert into instrument_images (instrument_id, images_id) values (68, 675);
insert into instrument_images (instrument_id, images_id) values (68, 676);
insert into instrument_images (instrument_id, images_id) values (68, 677);
insert into instrument_images (instrument_id, images_id) values (68, 678);
insert into instrument_images (instrument_id, images_id) values (68, 679);
insert into instrument_images (instrument_id, images_id) values (68, 680);
insert into instrument_images (instrument_id, images_id) values (69, 681);
insert into instrument_images (instrument_id, images_id) values (69, 682);
insert into instrument_images (instrument_id, images_id) values (69, 683);
insert into instrument_images (instrument_id, images_id) values (69, 684);
insert into instrument_images (instrument_id, images_id) values (69, 685);
insert into instrument_images (instrument_id, images_id) values (69, 686);
insert into instrument_images (instrument_id, images_id) values (69, 687);
insert into instrument_images (instrument_id, images_id) values (69, 688);
insert into instrument_images (instrument_id, images_id) values (69, 689);
insert into instrument_images (instrument_id, images_id) values (69, 690);
insert into instrument_images (instrument_id, images_id) values (70, 691);
insert into instrument_images (instrument_id, images_id) values (70, 692);
insert into instrument_images (instrument_id, images_id) values (70, 693);
insert into instrument_images (instrument_id, images_id) values (70, 694);
insert into instrument_images (instrument_id, images_id) values (70, 695);
insert into instrument_images (instrument_id, images_id) values (70, 696);
insert into instrument_images (instrument_id, images_id) values (70, 697);
insert into instrument_images (instrument_id, images_id) values (70, 698);
insert into instrument_images (instrument_id, images_id) values (70, 699);
insert into instrument_images (instrument_id, images_id) values (70, 700);
insert into instrument_images (instrument_id, images_id) values (71, 701);
insert into instrument_images (instrument_id, images_id) values (71, 702);
insert into instrument_images (instrument_id, images_id) values (71, 703);
insert into instrument_images (instrument_id, images_id) values (71, 704);
insert into instrument_images (instrument_id, images_id) values (71, 705);
insert into instrument_images (instrument_id, images_id) values (71, 706);
insert into instrument_images (instrument_id, images_id) values (71, 707);
insert into instrument_images (instrument_id, images_id) values (71, 708);
insert into instrument_images (instrument_id, images_id) values (71, 709);
insert into instrument_images (instrument_id, images_id) values (71, 710);
insert into instrument_images (instrument_id, images_id) values (72, 711);
insert into instrument_images (instrument_id, images_id) values (72, 712);
insert into instrument_images (instrument_id, images_id) values (72, 713);
insert into instrument_images (instrument_id, images_id) values (72, 714);
insert into instrument_images (instrument_id, images_id) values (72, 715);
insert into instrument_images (instrument_id, images_id) values (72, 716);
insert into instrument_images (instrument_id, images_id) values (72, 717);
insert into instrument_images (instrument_id, images_id) values (72, 718);
insert into instrument_images (instrument_id, images_id) values (72, 719);
insert into instrument_images (instrument_id, images_id) values (72, 720);
insert into instrument_images (instrument_id, images_id) values (73, 721);
insert into instrument_images (instrument_id, images_id) values (73, 722);
insert into instrument_images (instrument_id, images_id) values (73, 723);
insert into instrument_images (instrument_id, images_id) values (73, 724);
insert into instrument_images (instrument_id, images_id) values (73, 725);
insert into instrument_images (instrument_id, images_id) values (73, 726);
insert into instrument_images (instrument_id, images_id) values (73, 727);
insert into instrument_images (instrument_id, images_id) values (73, 728);
insert into instrument_images (instrument_id, images_id) values (73, 729);
insert into instrument_images (instrument_id, images_id) values (73, 730);
insert into instrument_images (instrument_id, images_id) values (74, 731);
insert into instrument_images (instrument_id, images_id) values (74, 732);
insert into instrument_images (instrument_id, images_id) values (74, 733);
insert into instrument_images (instrument_id, images_id) values (74, 734);
insert into instrument_images (instrument_id, images_id) values (74, 735);
insert into instrument_images (instrument_id, images_id) values (74, 736);
insert into instrument_images (instrument_id, images_id) values (74, 737);
insert into instrument_images (instrument_id, images_id) values (74, 738);
insert into instrument_images (instrument_id, images_id) values (74, 739);
insert into instrument_images (instrument_id, images_id) values (74, 740);
insert into instrument_images (instrument_id, images_id) values (75, 741);
insert into instrument_images (instrument_id, images_id) values (75, 742);
insert into instrument_images (instrument_id, images_id) values (75, 743);
insert into instrument_images (instrument_id, images_id) values (75, 744);
insert into instrument_images (instrument_id, images_id) values (75, 745);
insert into instrument_images (instrument_id, images_id) values (75, 746);
insert into instrument_images (instrument_id, images_id) values (75, 747);
insert into instrument_images (instrument_id, images_id) values (75, 748);
insert into instrument_images (instrument_id, images_id) values (75, 749);
insert into instrument_images (instrument_id, images_id) values (75, 750);
insert into instrument_images (instrument_id, images_id) values (76, 751);
insert into instrument_images (instrument_id, images_id) values (76, 752);
insert into instrument_images (instrument_id, images_id) values (76, 753);
insert into instrument_images (instrument_id, images_id) values (76, 754);
insert into instrument_images (instrument_id, images_id) values (76, 755);
insert into instrument_images (instrument_id, images_id) values (76, 756);
insert into instrument_images (instrument_id, images_id) values (76, 757);
insert into instrument_images (instrument_id, images_id) values (76, 758);
insert into instrument_images (instrument_id, images_id) values (76, 759);
insert into instrument_images (instrument_id, images_id) values (76, 760);
insert into instrument_images (instrument_id, images_id) values (77, 761);
insert into instrument_images (instrument_id, images_id) values (77, 762);
insert into instrument_images (instrument_id, images_id) values (77, 763);
insert into instrument_images (instrument_id, images_id) values (77, 764);
insert into instrument_images (instrument_id, images_id) values (77, 765);
insert into instrument_images (instrument_id, images_id) values (77, 766);
insert into instrument_images (instrument_id, images_id) values (77, 767);
insert into instrument_images (instrument_id, images_id) values (77, 768);
insert into instrument_images (instrument_id, images_id) values (77, 769);
insert into instrument_images (instrument_id, images_id) values (77, 770);
insert into instrument_images (instrument_id, images_id) values (78, 771);
insert into instrument_images (instrument_id, images_id) values (78, 772);
insert into instrument_images (instrument_id, images_id) values (78, 773);
insert into instrument_images (instrument_id, images_id) values (78, 774);
insert into instrument_images (instrument_id, images_id) values (78, 775);
insert into instrument_images (instrument_id, images_id) values (78, 776);
insert into instrument_images (instrument_id, images_id) values (78, 777);
insert into instrument_images (instrument_id, images_id) values (78, 778);
insert into instrument_images (instrument_id, images_id) values (78, 779);
insert into instrument_images (instrument_id, images_id) values (78, 780);
insert into instrument_images (instrument_id, images_id) values (79, 781);
insert into instrument_images (instrument_id, images_id) values (79, 782);
insert into instrument_images (instrument_id, images_id) values (79, 783);
insert into instrument_images (instrument_id, images_id) values (79, 784);
insert into instrument_images (instrument_id, images_id) values (79, 785);
insert into instrument_images (instrument_id, images_id) values (79, 786);
insert into instrument_images (instrument_id, images_id) values (79, 787);
insert into instrument_images (instrument_id, images_id) values (79, 788);
insert into instrument_images (instrument_id, images_id) values (79, 789);
insert into instrument_images (instrument_id, images_id) values (79, 790);
insert into instrument_images (instrument_id, images_id) values (80, 791);
insert into instrument_images (instrument_id, images_id) values (80, 792);
insert into instrument_images (instrument_id, images_id) values (80, 793);
insert into instrument_images (instrument_id, images_id) values (80, 794);
insert into instrument_images (instrument_id, images_id) values (80, 795);
insert into instrument_images (instrument_id, images_id) values (80, 796);
insert into instrument_images (instrument_id, images_id) values (80, 797);
insert into instrument_images (instrument_id, images_id) values (80, 798);
insert into instrument_images (instrument_id, images_id) values (80, 799);
insert into instrument_images (instrument_id, images_id) values (80, 800);
insert into instrument_images (instrument_id, images_id) values (81, 801);
insert into instrument_images (instrument_id, images_id) values (81, 802);
insert into instrument_images (instrument_id, images_id) values (81, 803);
insert into instrument_images (instrument_id, images_id) values (81, 804);
insert into instrument_images (instrument_id, images_id) values (81, 805);
insert into instrument_images (instrument_id, images_id) values (81, 806);
insert into instrument_images (instrument_id, images_id) values (81, 807);
insert into instrument_images (instrument_id, images_id) values (81, 808);
insert into instrument_images (instrument_id, images_id) values (81, 809);
insert into instrument_images (instrument_id, images_id) values (81, 810);
insert into instrument_images (instrument_id, images_id) values (82, 811);
insert into instrument_images (instrument_id, images_id) values (82, 812);
insert into instrument_images (instrument_id, images_id) values (82, 813);
insert into instrument_images (instrument_id, images_id) values (82, 814);
insert into instrument_images (instrument_id, images_id) values (82, 815);
insert into instrument_images (instrument_id, images_id) values (82, 816);
insert into instrument_images (instrument_id, images_id) values (82, 817);
insert into instrument_images (instrument_id, images_id) values (82, 818);
insert into instrument_images (instrument_id, images_id) values (82, 819);
insert into instrument_images (instrument_id, images_id) values (82, 820);
insert into instrument_images (instrument_id, images_id) values (83, 821);
insert into instrument_images (instrument_id, images_id) values (83, 822);
insert into instrument_images (instrument_id, images_id) values (83, 823);
insert into instrument_images (instrument_id, images_id) values (83, 824);
insert into instrument_images (instrument_id, images_id) values (83, 825);
insert into instrument_images (instrument_id, images_id) values (83, 826);
insert into instrument_images (instrument_id, images_id) values (83, 827);
insert into instrument_images (instrument_id, images_id) values (83, 828);
insert into instrument_images (instrument_id, images_id) values (83, 829);
insert into instrument_images (instrument_id, images_id) values (83, 830);
insert into instrument_images (instrument_id, images_id) values (84, 831);
insert into instrument_images (instrument_id, images_id) values (84, 832);
insert into instrument_images (instrument_id, images_id) values (84, 833);
insert into instrument_images (instrument_id, images_id) values (84, 834);
insert into instrument_images (instrument_id, images_id) values (84, 835);
insert into instrument_images (instrument_id, images_id) values (84, 836);
insert into instrument_images (instrument_id, images_id) values (84, 837);
insert into instrument_images (instrument_id, images_id) values (84, 838);
insert into instrument_images (instrument_id, images_id) values (84, 839);
insert into instrument_images (instrument_id, images_id) values (84, 840);
insert into instrument_images (instrument_id, images_id) values (85, 841);
insert into instrument_images (instrument_id, images_id) values (85, 842);
insert into instrument_images (instrument_id, images_id) values (85, 843);
insert into instrument_images (instrument_id, images_id) values (85, 844);
insert into instrument_images (instrument_id, images_id) values (85, 845);
insert into instrument_images (instrument_id, images_id) values (85, 846);
insert into instrument_images (instrument_id, images_id) values (85, 847);
insert into instrument_images (instrument_id, images_id) values (85, 848);
insert into instrument_images (instrument_id, images_id) values (85, 849);
insert into instrument_images (instrument_id, images_id) values (85, 850);
insert into instrument_images (instrument_id, images_id) values (86, 851);
insert into instrument_images (instrument_id, images_id) values (86, 852);
insert into instrument_images (instrument_id, images_id) values (86, 853);
insert into instrument_images (instrument_id, images_id) values (86, 854);
insert into instrument_images (instrument_id, images_id) values (86, 855);
insert into instrument_images (instrument_id, images_id) values (86, 856);
insert into instrument_images (instrument_id, images_id) values (86, 857);
insert into instrument_images (instrument_id, images_id) values (86, 858);
insert into instrument_images (instrument_id, images_id) values (86, 859);
insert into instrument_images (instrument_id, images_id) values (86, 860);
insert into instrument_images (instrument_id, images_id) values (87, 861);
insert into instrument_images (instrument_id, images_id) values (87, 862);
insert into instrument_images (instrument_id, images_id) values (87, 863);
insert into instrument_images (instrument_id, images_id) values (87, 864);
insert into instrument_images (instrument_id, images_id) values (87, 865);
insert into instrument_images (instrument_id, images_id) values (87, 866);
insert into instrument_images (instrument_id, images_id) values (87, 867);
insert into instrument_images (instrument_id, images_id) values (87, 868);
insert into instrument_images (instrument_id, images_id) values (87, 869);
insert into instrument_images (instrument_id, images_id) values (87, 870);
insert into instrument_images (instrument_id, images_id) values (88, 871);
insert into instrument_images (instrument_id, images_id) values (88, 872);
insert into instrument_images (instrument_id, images_id) values (88, 873);
insert into instrument_images (instrument_id, images_id) values (88, 874);
insert into instrument_images (instrument_id, images_id) values (88, 875);
insert into instrument_images (instrument_id, images_id) values (88, 876);
insert into instrument_images (instrument_id, images_id) values (88, 877);
insert into instrument_images (instrument_id, images_id) values (88, 878);
insert into instrument_images (instrument_id, images_id) values (88, 879);
insert into instrument_images (instrument_id, images_id) values (88, 880);
insert into instrument_images (instrument_id, images_id) values (89, 881);
insert into instrument_images (instrument_id, images_id) values (89, 882);
insert into instrument_images (instrument_id, images_id) values (89, 883);
insert into instrument_images (instrument_id, images_id) values (89, 884);
insert into instrument_images (instrument_id, images_id) values (89, 885);
insert into instrument_images (instrument_id, images_id) values (89, 886);
insert into instrument_images (instrument_id, images_id) values (89, 887);
insert into instrument_images (instrument_id, images_id) values (89, 888);
insert into instrument_images (instrument_id, images_id) values (89, 889);
insert into instrument_images (instrument_id, images_id) values (89, 890);
insert into instrument_images (instrument_id, images_id) values (90, 891);
insert into instrument_images (instrument_id, images_id) values (90, 892);
insert into instrument_images (instrument_id, images_id) values (90, 893);
insert into instrument_images (instrument_id, images_id) values (90, 894);
insert into instrument_images (instrument_id, images_id) values (90, 895);
insert into instrument_images (instrument_id, images_id) values (90, 896);
insert into instrument_images (instrument_id, images_id) values (90, 897);
insert into instrument_images (instrument_id, images_id) values (90, 898);
insert into instrument_images (instrument_id, images_id) values (90, 899);
insert into instrument_images (instrument_id, images_id) values (90, 900);
insert into instrument_images (instrument_id, images_id) values (91, 901);
insert into instrument_images (instrument_id, images_id) values (91, 902);
insert into instrument_images (instrument_id, images_id) values (91, 903);
insert into instrument_images (instrument_id, images_id) values (91, 904);
insert into instrument_images (instrument_id, images_id) values (91, 905);
insert into instrument_images (instrument_id, images_id) values (91, 906);
insert into instrument_images (instrument_id, images_id) values (91, 907);
insert into instrument_images (instrument_id, images_id) values (91, 908);
insert into instrument_images (instrument_id, images_id) values (91, 909);
insert into instrument_images (instrument_id, images_id) values (91, 910);
insert into instrument_images (instrument_id, images_id) values (92, 911);
insert into instrument_images (instrument_id, images_id) values (92, 912);
insert into instrument_images (instrument_id, images_id) values (92, 913);
insert into instrument_images (instrument_id, images_id) values (92, 914);
insert into instrument_images (instrument_id, images_id) values (92, 915);
insert into instrument_images (instrument_id, images_id) values (92, 916);
insert into instrument_images (instrument_id, images_id) values (92, 917);
insert into instrument_images (instrument_id, images_id) values (92, 918);
insert into instrument_images (instrument_id, images_id) values (92, 919);
insert into instrument_images (instrument_id, images_id) values (92, 920);
insert into instrument_images (instrument_id, images_id) values (93, 921);
insert into instrument_images (instrument_id, images_id) values (93, 922);
insert into instrument_images (instrument_id, images_id) values (93, 923);
insert into instrument_images (instrument_id, images_id) values (93, 924);
insert into instrument_images (instrument_id, images_id) values (93, 925);
insert into instrument_images (instrument_id, images_id) values (93, 926);
insert into instrument_images (instrument_id, images_id) values (93, 927);
insert into instrument_images (instrument_id, images_id) values (93, 928);
insert into instrument_images (instrument_id, images_id) values (93, 929);
insert into instrument_images (instrument_id, images_id) values (93, 930);
insert into instrument_images (instrument_id, images_id) values (94, 931);
insert into instrument_images (instrument_id, images_id) values (94, 932);
insert into instrument_images (instrument_id, images_id) values (94, 933);
insert into instrument_images (instrument_id, images_id) values (94, 934);
insert into instrument_images (instrument_id, images_id) values (94, 935);
insert into instrument_images (instrument_id, images_id) values (94, 936);
insert into instrument_images (instrument_id, images_id) values (94, 937);
insert into instrument_images (instrument_id, images_id) values (94, 938);
insert into instrument_images (instrument_id, images_id) values (94, 939);
insert into instrument_images (instrument_id, images_id) values (94, 940);
insert into instrument_images (instrument_id, images_id) values (95, 941);
insert into instrument_images (instrument_id, images_id) values (95, 942);
insert into instrument_images (instrument_id, images_id) values (95, 943);
insert into instrument_images (instrument_id, images_id) values (95, 944);
insert into instrument_images (instrument_id, images_id) values (95, 945);
insert into instrument_images (instrument_id, images_id) values (95, 946);
insert into instrument_images (instrument_id, images_id) values (95, 947);
insert into instrument_images (instrument_id, images_id) values (95, 948);
insert into instrument_images (instrument_id, images_id) values (95, 949);
insert into instrument_images (instrument_id, images_id) values (95, 950);
insert into instrument_images (instrument_id, images_id) values (96, 951);
insert into instrument_images (instrument_id, images_id) values (96, 952);
insert into instrument_images (instrument_id, images_id) values (96, 953);
insert into instrument_images (instrument_id, images_id) values (96, 954);
insert into instrument_images (instrument_id, images_id) values (96, 955);
insert into instrument_images (instrument_id, images_id) values (96, 956);
insert into instrument_images (instrument_id, images_id) values (96, 957);
insert into instrument_images (instrument_id, images_id) values (96, 958);
insert into instrument_images (instrument_id, images_id) values (96, 959);
insert into instrument_images (instrument_id, images_id) values (96, 960);
insert into instrument_images (instrument_id, images_id) values (97, 961);
insert into instrument_images (instrument_id, images_id) values (97, 962);
insert into instrument_images (instrument_id, images_id) values (97, 963);
insert into instrument_images (instrument_id, images_id) values (97, 964);
insert into instrument_images (instrument_id, images_id) values (97, 965);
insert into instrument_images (instrument_id, images_id) values (97, 966);
insert into instrument_images (instrument_id, images_id) values (97, 967);
insert into instrument_images (instrument_id, images_id) values (97, 968);
insert into instrument_images (instrument_id, images_id) values (97, 969);
insert into instrument_images (instrument_id, images_id) values (97, 970);
insert into instrument_images (instrument_id, images_id) values (98, 971);
insert into instrument_images (instrument_id, images_id) values (98, 972);
insert into instrument_images (instrument_id, images_id) values (98, 973);
insert into instrument_images (instrument_id, images_id) values (98, 974);
insert into instrument_images (instrument_id, images_id) values (98, 975);
insert into instrument_images (instrument_id, images_id) values (98, 976);
insert into instrument_images (instrument_id, images_id) values (98, 977);
insert into instrument_images (instrument_id, images_id) values (98, 978);
insert into instrument_images (instrument_id, images_id) values (98, 979);
insert into instrument_images (instrument_id, images_id) values (98, 980);
insert into instrument_images (instrument_id, images_id) values (99, 981);
insert into instrument_images (instrument_id, images_id) values (99, 982);
insert into instrument_images (instrument_id, images_id) values (99, 983);
insert into instrument_images (instrument_id, images_id) values (99, 984);
insert into instrument_images (instrument_id, images_id) values (99, 985);
insert into instrument_images (instrument_id, images_id) values (99, 986);
insert into instrument_images (instrument_id, images_id) values (99, 987);
insert into instrument_images (instrument_id, images_id) values (99, 988);
insert into instrument_images (instrument_id, images_id) values (99, 989);
insert into instrument_images (instrument_id, images_id) values (99, 990);
insert into instrument_images (instrument_id, images_id) values (100, 991);
insert into instrument_images (instrument_id, images_id) values (100, 992);
insert into instrument_images (instrument_id, images_id) values (100, 993);
insert into instrument_images (instrument_id, images_id) values (100, 994);
insert into instrument_images (instrument_id, images_id) values (100, 995);
insert into instrument_images (instrument_id, images_id) values (100, 996);
insert into instrument_images (instrument_id, images_id) values (100, 997);
insert into instrument_images (instrument_id, images_id) values (100, 998);
insert into instrument_images (instrument_id, images_id) values (100, 999);
insert into instrument_images (instrument_id, images_id) values (100, 1000);
insert into instrument_images (instrument_id, images_id) values (101, 1001);
insert into instrument_images (instrument_id, images_id) values (101, 1002);
insert into instrument_images (instrument_id, images_id) values (101, 1003);
insert into instrument_images (instrument_id, images_id) values (101, 1004);
insert into instrument_images (instrument_id, images_id) values (101, 1005);
insert into instrument_images (instrument_id, images_id) values (101, 1006);
insert into instrument_images (instrument_id, images_id) values (101, 1007);
insert into instrument_images (instrument_id, images_id) values (101, 1008);
insert into instrument_images (instrument_id, images_id) values (101, 1009);
insert into instrument_images (instrument_id, images_id) values (101, 1010);
insert into instrument_images (instrument_id, images_id) values (102, 1011);
insert into instrument_images (instrument_id, images_id) values (102, 1012);
insert into instrument_images (instrument_id, images_id) values (102, 1013);
insert into instrument_images (instrument_id, images_id) values (102, 1014);
insert into instrument_images (instrument_id, images_id) values (102, 1015);
insert into instrument_images (instrument_id, images_id) values (102, 1016);
insert into instrument_images (instrument_id, images_id) values (102, 1017);
insert into instrument_images (instrument_id, images_id) values (102, 1018);
insert into instrument_images (instrument_id, images_id) values (102, 1019);
insert into instrument_images (instrument_id, images_id) values (102, 1020);
insert into instrument_images (instrument_id, images_id) values (103, 1021);
insert into instrument_images (instrument_id, images_id) values (103, 1022);
insert into instrument_images (instrument_id, images_id) values (103, 1023);
insert into instrument_images (instrument_id, images_id) values (103, 1024);
insert into instrument_images (instrument_id, images_id) values (103, 1025);
insert into instrument_images (instrument_id, images_id) values (103, 1026);
insert into instrument_images (instrument_id, images_id) values (103, 1027);
insert into instrument_images (instrument_id, images_id) values (103, 1028);
insert into instrument_images (instrument_id, images_id) values (103, 1029);
insert into instrument_images (instrument_id, images_id) values (103, 1030);
insert into instrument_images (instrument_id, images_id) values (104, 1031);
insert into instrument_images (instrument_id, images_id) values (104, 1032);
insert into instrument_images (instrument_id, images_id) values (104, 1033);
insert into instrument_images (instrument_id, images_id) values (104, 1034);
insert into instrument_images (instrument_id, images_id) values (104, 1035);
insert into instrument_images (instrument_id, images_id) values (104, 1036);
insert into instrument_images (instrument_id, images_id) values (104, 1037);
insert into instrument_images (instrument_id, images_id) values (104, 1038);
insert into instrument_images (instrument_id, images_id) values (104, 1039);
insert into instrument_images (instrument_id, images_id) values (104, 1040);
insert into instrument_images (instrument_id, images_id) values (105, 1041);
insert into instrument_images (instrument_id, images_id) values (105, 1042);
insert into instrument_images (instrument_id, images_id) values (105, 1043);
insert into instrument_images (instrument_id, images_id) values (105, 1044);
insert into instrument_images (instrument_id, images_id) values (105, 1045);
insert into instrument_images (instrument_id, images_id) values (105, 1046);
insert into instrument_images (instrument_id, images_id) values (105, 1047);
insert into instrument_images (instrument_id, images_id) values (105, 1048);
insert into instrument_images (instrument_id, images_id) values (105, 1049);
insert into instrument_images (instrument_id, images_id) values (105, 1050);
insert into instrument_images (instrument_id, images_id) values (106, 1051);
insert into instrument_images (instrument_id, images_id) values (106, 1052);
insert into instrument_images (instrument_id, images_id) values (106, 1053);
insert into instrument_images (instrument_id, images_id) values (106, 1054);
insert into instrument_images (instrument_id, images_id) values (106, 1055);
insert into instrument_images (instrument_id, images_id) values (106, 1056);
insert into instrument_images (instrument_id, images_id) values (106, 1057);
insert into instrument_images (instrument_id, images_id) values (106, 1058);
insert into instrument_images (instrument_id, images_id) values (106, 1059);
insert into instrument_images (instrument_id, images_id) values (106, 1060);
insert into instrument_images (instrument_id, images_id) values (107, 1061);
insert into instrument_images (instrument_id, images_id) values (107, 1062);
insert into instrument_images (instrument_id, images_id) values (107, 1063);
insert into instrument_images (instrument_id, images_id) values (107, 1064);
insert into instrument_images (instrument_id, images_id) values (107, 1065);
insert into instrument_images (instrument_id, images_id) values (107, 1066);
insert into instrument_images (instrument_id, images_id) values (107, 1067);
insert into instrument_images (instrument_id, images_id) values (107, 1068);
insert into instrument_images (instrument_id, images_id) values (107, 1069);
insert into instrument_images (instrument_id, images_id) values (107, 1070);
insert into instrument_images (instrument_id, images_id) values (108, 1071);
insert into instrument_images (instrument_id, images_id) values (108, 1072);
insert into instrument_images (instrument_id, images_id) values (108, 1073);
insert into instrument_images (instrument_id, images_id) values (108, 1074);
insert into instrument_images (instrument_id, images_id) values (108, 1075);
insert into instrument_images (instrument_id, images_id) values (108, 1076);
insert into instrument_images (instrument_id, images_id) values (108, 1077);
insert into instrument_images (instrument_id, images_id) values (108, 1078);
insert into instrument_images (instrument_id, images_id) values (108, 1079);
insert into instrument_images (instrument_id, images_id) values (108, 1080);
insert into instrument_images (instrument_id, images_id) values (109, 1081);
insert into instrument_images (instrument_id, images_id) values (109, 1082);
insert into instrument_images (instrument_id, images_id) values (109, 1083);
insert into instrument_images (instrument_id, images_id) values (109, 1084);
insert into instrument_images (instrument_id, images_id) values (109, 1085);
insert into instrument_images (instrument_id, images_id) values (109, 1086);
insert into instrument_images (instrument_id, images_id) values (109, 1087);
insert into instrument_images (instrument_id, images_id) values (109, 1088);
insert into instrument_images (instrument_id, images_id) values (109, 1089);
insert into instrument_images (instrument_id, images_id) values (109, 1090);
insert into instrument_images (instrument_id, images_id) values (110, 1091);
insert into instrument_images (instrument_id, images_id) values (110, 1092);
insert into instrument_images (instrument_id, images_id) values (110, 1093);
insert into instrument_images (instrument_id, images_id) values (110, 1094);
insert into instrument_images (instrument_id, images_id) values (110, 1095);
insert into instrument_images (instrument_id, images_id) values (110, 1096);
insert into instrument_images (instrument_id, images_id) values (110, 1097);
insert into instrument_images (instrument_id, images_id) values (110, 1098);
insert into instrument_images (instrument_id, images_id) values (110, 1099);
insert into instrument_images (instrument_id, images_id) values (110, 1100);
insert into instrument_images (instrument_id, images_id) values (111, 1101);
insert into instrument_images (instrument_id, images_id) values (111, 1102);
insert into instrument_images (instrument_id, images_id) values (111, 1103);
insert into instrument_images (instrument_id, images_id) values (111, 1104);
insert into instrument_images (instrument_id, images_id) values (111, 1105);
insert into instrument_images (instrument_id, images_id) values (111, 1106);
insert into instrument_images (instrument_id, images_id) values (111, 1107);
insert into instrument_images (instrument_id, images_id) values (111, 1108);
insert into instrument_images (instrument_id, images_id) values (111, 1109);
insert into instrument_images (instrument_id, images_id) values (111, 1110);
insert into instrument_images (instrument_id, images_id) values (112, 1111);
insert into instrument_images (instrument_id, images_id) values (112, 1112);
insert into instrument_images (instrument_id, images_id) values (112, 1113);
insert into instrument_images (instrument_id, images_id) values (112, 1114);
insert into instrument_images (instrument_id, images_id) values (112, 1115);
insert into instrument_images (instrument_id, images_id) values (112, 1116);
insert into instrument_images (instrument_id, images_id) values (112, 1117);
insert into instrument_images (instrument_id, images_id) values (112, 1118);
insert into instrument_images (instrument_id, images_id) values (112, 1119);
insert into instrument_images (instrument_id, images_id) values (112, 1120);
insert into instrument_images (instrument_id, images_id) values (113, 1121);
insert into instrument_images (instrument_id, images_id) values (113, 1122);
insert into instrument_images (instrument_id, images_id) values (113, 1123);
insert into instrument_images (instrument_id, images_id) values (113, 1124);
insert into instrument_images (instrument_id, images_id) values (113, 1125);
insert into instrument_images (instrument_id, images_id) values (113, 1126);
insert into instrument_images (instrument_id, images_id) values (113, 1127);
insert into instrument_images (instrument_id, images_id) values (113, 1128);
insert into instrument_images (instrument_id, images_id) values (113, 1129);
insert into instrument_images (instrument_id, images_id) values (113, 1130);
insert into instrument_images (instrument_id, images_id) values (114, 1131);
insert into instrument_images (instrument_id, images_id) values (114, 1132);
insert into instrument_images (instrument_id, images_id) values (114, 1133);
insert into instrument_images (instrument_id, images_id) values (114, 1134);
insert into instrument_images (instrument_id, images_id) values (114, 1135);
insert into instrument_images (instrument_id, images_id) values (114, 1136);
insert into instrument_images (instrument_id, images_id) values (114, 1137);
insert into instrument_images (instrument_id, images_id) values (114, 1138);
insert into instrument_images (instrument_id, images_id) values (114, 1139);
insert into instrument_images (instrument_id, images_id) values (114, 1140);
insert into instrument_images (instrument_id, images_id) values (115, 1141);
insert into instrument_images (instrument_id, images_id) values (115, 1142);
insert into instrument_images (instrument_id, images_id) values (115, 1143);
insert into instrument_images (instrument_id, images_id) values (115, 1144);
insert into instrument_images (instrument_id, images_id) values (115, 1145);
insert into instrument_images (instrument_id, images_id) values (115, 1146);
insert into instrument_images (instrument_id, images_id) values (115, 1147);
insert into instrument_images (instrument_id, images_id) values (115, 1148);
insert into instrument_images (instrument_id, images_id) values (115, 1149);
insert into instrument_images (instrument_id, images_id) values (115, 1150);
insert into instrument_images (instrument_id, images_id) values (116, 1151);
insert into instrument_images (instrument_id, images_id) values (116, 1152);
insert into instrument_images (instrument_id, images_id) values (116, 1153);
insert into instrument_images (instrument_id, images_id) values (116, 1154);
insert into instrument_images (instrument_id, images_id) values (116, 1155);
insert into instrument_images (instrument_id, images_id) values (116, 1156);
insert into instrument_images (instrument_id, images_id) values (116, 1157);
insert into instrument_images (instrument_id, images_id) values (116, 1158);
insert into instrument_images (instrument_id, images_id) values (116, 1159);
insert into instrument_images (instrument_id, images_id) values (116, 1160);
insert into instrument_images (instrument_id, images_id) values (117, 1161);
insert into instrument_images (instrument_id, images_id) values (117, 1162);
insert into instrument_images (instrument_id, images_id) values (117, 1163);
insert into instrument_images (instrument_id, images_id) values (117, 1164);
insert into instrument_images (instrument_id, images_id) values (117, 1165);
insert into instrument_images (instrument_id, images_id) values (117, 1166);
insert into instrument_images (instrument_id, images_id) values (117, 1167);
insert into instrument_images (instrument_id, images_id) values (117, 1168);
insert into instrument_images (instrument_id, images_id) values (117, 1169);
insert into instrument_images (instrument_id, images_id) values (117, 1170);
insert into instrument_images (instrument_id, images_id) values (118, 1171);
insert into instrument_images (instrument_id, images_id) values (118, 1172);
insert into instrument_images (instrument_id, images_id) values (118, 1173);
insert into instrument_images (instrument_id, images_id) values (118, 1174);
insert into instrument_images (instrument_id, images_id) values (118, 1175);
insert into instrument_images (instrument_id, images_id) values (118, 1176);
insert into instrument_images (instrument_id, images_id) values (118, 1177);
insert into instrument_images (instrument_id, images_id) values (118, 1178);
insert into instrument_images (instrument_id, images_id) values (118, 1179);
insert into instrument_images (instrument_id, images_id) values (118, 1180);
insert into instrument_images (instrument_id, images_id) values (119, 1181);
insert into instrument_images (instrument_id, images_id) values (119, 1182);
insert into instrument_images (instrument_id, images_id) values (119, 1183);
insert into instrument_images (instrument_id, images_id) values (119, 1184);
insert into instrument_images (instrument_id, images_id) values (119, 1185);
insert into instrument_images (instrument_id, images_id) values (119, 1186);
insert into instrument_images (instrument_id, images_id) values (119, 1187);
insert into instrument_images (instrument_id, images_id) values (119, 1188);
insert into instrument_images (instrument_id, images_id) values (119, 1189);
insert into instrument_images (instrument_id, images_id) values (119, 1190);
insert into instrument_images (instrument_id, images_id) values (120, 1191);
insert into instrument_images (instrument_id, images_id) values (120, 1192);
insert into instrument_images (instrument_id, images_id) values (120, 1193);
insert into instrument_images (instrument_id, images_id) values (120, 1194);
insert into instrument_images (instrument_id, images_id) values (120, 1195);
insert into instrument_images (instrument_id, images_id) values (120, 1196);
insert into instrument_images (instrument_id, images_id) values (120, 1197);
insert into instrument_images (instrument_id, images_id) values (120, 1198);
insert into instrument_images (instrument_id, images_id) values (120, 1199);
insert into instrument_images (instrument_id, images_id) values (120, 1200);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------- Inserting users --------------------------------------------------------------------------------------------
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (1, 'Darron', 'Kshlerin', 'manager1@gmail.com', 'manager1', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 1201);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (2, 'Eusebio', 'Bosco', 'manager2@gmail.com', 'manager2', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 1202);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (3, 'Justin', 'Little', 'manager3@gmail.com', 'manager3', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 1203);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (4, 'Isreal', 'Hoeger', 'manager4@gmail.com', 'manager4', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 1204);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (5, 'Yee', 'Wuckert', 'manager5@gmail.com', 'manager5', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 1205);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (6, 'Jere', 'Ratke', 'manager6@gmail.com', 'manager6', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 1206);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (7, 'Rhea', 'Ruecker', 'manager7@gmail.com', 'manager7', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 1207);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (8, 'Loida', 'Kuhic', 'manager8@gmail.com', 'manager8', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 1208);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (9, 'Julio', 'Bartoletti', 'manager9@gmail.com', 'manager9', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 1209);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (10, 'Kandace', 'Breitenberg', 'manager10@gmail.com', 'manager10', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 1210);

insert into users (id, name, surname, email, username, password, archived, role, image_id) values (11, 'Augustine', 'Franecki', 'salesman1@gmail.com', 'salesman1', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 1211);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (12, 'Jeramy', 'Hansen', 'salesman2@gmail.com', 'salesman2', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 1212);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (13, 'Rachel', 'Friesen', 'salesman3@gmail.com', 'salesman3', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 1213);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (14, 'Karena', 'O''Conner', 'salesman4@gmail.com', 'salesman4', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 1214);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (15, 'Hunter', 'Vandervort', 'salesman5@gmail.com', 'salesman5', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 1215);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (16, 'Jacques', 'Bernhard', 'salesman6@gmail.com', 'salesman6', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 1216);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (17, 'Moses', 'McLaughlin', 'salesman7@gmail.com', 'salesman7', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 1217);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (18, 'Suzette', 'Legros', 'salesman8@gmail.com', 'salesman8', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 1218);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (19, 'Nerissa', 'Sanford', 'salesman9@gmail.com', 'salesman9', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 1219);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (20, 'Jewell', 'Ryan', 'salesman10@gmail.com', 'salesman10', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 1220);

insert into users (id, name, surname, email, username, password, archived, role, image_id) values (21, 'Maryjo', 'Wolf', 'customer1@gmail.com', 'customer1', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 1221);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (22, 'Jeanna', 'Mann', 'customer2@gmail.com', 'customer2', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 1222);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (23, 'Sophia', 'Olson', 'customer3@gmail.com', 'customer3', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 1223);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (24, 'Charlie', 'Wisozk', 'customer4@gmail.com', 'customer4', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 1224);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (25, 'Adolfo', 'Bernhard', 'customer5@gmail.com', 'customer5', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 1225);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (26, 'Maurita', 'Johnson', 'customer6@gmail.com', 'customer6', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 1226);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (27, 'Agnes', 'Schmidt', 'customer7@gmail.com', 'customer7', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 1227);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (28, 'Rutha', 'Mills', 'customer8@gmail.com', 'customer8', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 1228);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (29, 'Brandy', 'Jast', 'customer9@gmail.com', 'customer9', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 1229);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (30, 'Kayla', 'Runolfsdottir', 'customer10@gmail.com', 'customer10', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 1230);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------- Altering user_id_seq -----------------------------------------------------------------------------------------
alter sequence user_id_seq restart with 31;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

