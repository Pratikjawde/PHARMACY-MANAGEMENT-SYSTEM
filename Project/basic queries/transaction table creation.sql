create table [Transaction] (
Transaction_Id INT Primary Key IDENTITY(1,1),
Prescription_Id VARCHAR(35) Foreign Key REFERENCES Prescription(Prescription_Id),
Medicine_Id INT Foreign Key REFERENCES Medicine(Medicine_Id),
Amount DECIMAL(10,2) not null CHECK (Amount>0),
Transaction_Date DATE not null,
Transaction_Type VARCHAR(20) CHECK (Transaction_Type in ('sale','purchase')))