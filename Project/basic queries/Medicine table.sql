create table Medicine(
Medicine_Id INT Primary Key Identity(1,1),
Name VARCHAR(35) not null,
Manufacturer VARCHAR(35) not null,
Price decimal(10,2) not null)