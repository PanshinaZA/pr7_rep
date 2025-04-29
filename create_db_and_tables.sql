--Создание базы данных medical_db
CREATE DATABASE medical_db
--Создание таблицы hospital
CREATE TABLE Hospital (
        Hospital_Id serial NOT NULL PRIMARY KEY,
        Hospital_Name VARCHAR (100) NOT NULL,
        Bed_Count serial
    );
--Вставка данных в таблицу Hospital
INSERT INTO Hospital (Hospital_Id, Hospital_Name, Bed_Count)
    VALUES
    (1, 'Mayo Clinic', 200),
    (2, 'Cleveland Clinic', 400),
    (3, 'Johns Hopkins', 1000),
    (4, 'UCLA Medical Center', 1500);
--Создание таблицы doctor
CREATE TABLE Doctor (
    Doctor_Id serial NOT NULL PRIMARY KEY,
    Doctor_Name VARCHAR (100) NOT NULL,
    Hospital_Id serial NOT NULL,
    Joining_Date DATE NOT NULL,
    Speciality VARCHAR (100) NOT NULL,
    Salary INTEGER NOT NULL,
    Experience SMALLINT
);
ALTER TABLE Doctor
ADD CONSTRAINT fk_hospital
FOREIGN KEY (Hospital_Id) REFERENCES Hospital(Hospital_Id);
--Вставка данных в таблицу doctor
INSERT INTO Doctor (Doctor_Id, Doctor_Name, Hospital_Id, Joining_Date, Speciality, Salary, Experience)
VALUES
('101', 'David', '1', '2005-02-10', 'Pediatric', 40000, NULL),
('102', 'Michael', '1', '2018-07-23', 'Oncologist', 20000, NULL),
('103', 'Susan', '2', '2016-05-19', 'Garnacologist', 25000, NULL),
('104', 'Robert', '2', '2017-12-28', 'Pediatric', 28000, NULL),
('105', 'Linda', '3', '2004-06-04', 'Garnacologist', 42000, NULL),
('106', 'William', '3', '2012-09-11', 'Dermatologist', 30000, NULL),
('107', 'Richard', '4', '2014-08-21', 'Garnacologist', 32000, NULL),
('108', 'Karen', '4', '2011-10-17', 'Radiologist', 30000, NULL),
('109', 'James', '1', '2022-01-15', 'Cardiologist', 45000, 5),
('110', 'Emily', '1', '2023-04-10', 'Orthopedic Surgeon', 50000, 3),
('111', 'Olivia', '2', '2021-09-05', 'Neurologist', 42000, 4),
('112', 'John', '2', '2024-02-18', 'Surgeon', 60000, 2),
('113', 'Sophia', '3', '2022-07-30', 'Urologist', 38000, 6),
('114', 'Daniel', '3', '2025-03-22', 'Pulmonologist', 47000, 1),
('115', 'Isabella', '4', '2023-11-01', 'Pediatrician', 41000, 3),
('116', 'Liam', '4', '2022-05-25', 'Dermatologist', 35000, 4),
('117', 'Mia', '1', '2024-06-17', 'Gastroenterologist', 53000, 2),
('118', 'Lucas', '2', '2023-01-12', 'Anesthesiologist', 46000, 3);
--Создание таблицы patients
CREATE TABLE Patients (
            Patient_Id SERIAL NOT NULL PRIMARY KEY,
            Patient_name VARCHAR(100) NOT NULL,
            Age INTEGER,
            Diagnosis VARCHAR(100),
            Hospital_Id INT REFERENCES Hospital(Hospital_id)
);
--Вставка данных в таблицу patients
INSERT INTO Patients (Patient_Id, Patient_Name, Age, Diagnosis, Hospital_Id)
    VALUES
        (1, 'Alice', 60, 'Hypertension', '1'),
        (2, 'Bob', 45, 'Diabetes', '2'),
        (3, 'Charlie', 70, 'Arthritis', '2'),
        (4, 'David', 55, 'Asthma', '1'),
        (5, 'Eve', 80, 'Heart Disease', '4'),
        (6, 'Frank', 65, 'Diabetes', '3'),
        (7, 'Grace', 50, 'Hypertension', '4'),
        (8, 'Hannah', 75, 'Arthritis', '2'),
        (9, 'Ivan', 40, 'Asthma', '1'),
        (10, 'Julia', 52, 'Heart Disease', '3');
