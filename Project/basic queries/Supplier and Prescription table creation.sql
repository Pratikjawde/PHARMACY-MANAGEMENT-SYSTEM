create table supplier (
Supplier_Id INT Primary Key IDENTITY(1,1),
Name VARCHAR(20) not null,
Contact_Info VARCHAR(35) not null,
Address VARCHAR(35) not null)

create table Prescription (
Prescription_Id VARCHAR(35) Primary Key,
Patient_Id VARCHAR(35) not null Foreign Key REFERENCES Patient (Patient_Id),
Doctor_Id  VARCHAR(35) not null Foreign Key REFERENCES Doctor (Doctor_Id),
Issue_Date DATE not null)
