CREATE DATABASE "Selection_Committee";

CREATE TABLE Entrees (
    EntreeID SERIAL PRIMARY KEY,
    Surname VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255) NOT NULL,
    SecondName VARCHAR(255) NOT NULL,
    Sex VARCHAR(30) NOT NULL,
    CONSTRAINT EntreesSexCheck CHECK(Sex = 'Жіночий' OR Sex = 'Чоловічий'),
    BirthDate DATE NOT NULL,
    CONSTRAINT EntreesBirthDateCheck CHECK(BirthDate < CURRENT_DATE AND BirthDate > '1950-01-01')
);

CREATE TABLE Specialties (
    SpecialtyID SERIAL PRIMARY KEY,
    SpecialtyName VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Subjects (
    SubjectID SERIAL PRIMARY KEY,
    SubjectName VARCHAR(255) UNIQUE NOT NULL,
    ControlType VARCHAR(255) NOT NULL
);

CREATE TABLE Marks (
    Mark SMALLINT NOT NULL,
    EntreeID INTEGER NOT NULL,
    SubjectID INTEGER NOT NULL,
    SpecialtyID INTEGER NOT NULL,
    PRIMARY KEY(EntreeID, SubjectID, SpecialtyID)
);

DROP TABLE IF EXISTS Marks;
DROP TABLE IF EXISTS Subjects;
DROP TABLE IF EXISTS Specialties;
DROP TABLE IF EXISTS Entrees;