create table Patient (
Patient_Id VARCHAR(35) Primary Key,
Patient_Name VARCHAR(35) not null,
Contact VARCHAR(35) not null,
Patient_History XML,
Gender CHAR(1) CHECK (Gender In('M','F')))