CREATE TABLE groups
(
    id INTEGER DEFAULT nextval('groups_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    year INTEGER NOT NULL
);

CREATE TABLE students
(
    id INTEGER DEFAULT nextval('students_id_seq'::regclass) PRIMARY KEY NOT NULL,
    surname VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    patronymic_name VARCHAR(50),
    birthday DATE NOT NULL,
    passport_serial VARCHAR(4) NOT NULL,
    passport_number VARCHAR(6) NOT NULL,
    group_id INTEGER NOT NULL,
    CONSTRAINT students_groups_id_fk FOREIGN KEY (group_id) REFERENCES groups (id)
);
CREATE UNIQUE INDEX students_passport_serial_passport_number_key ON students (passport_serial, passport_number);