create table inventory (
Inventory_Id INT Primary Key IDENTITY(1,1),
Medicine_Id INT not null Foreign Key REFERENCES Medicine(Medicine_Id),
Expiry_Date DATE not null,
Stock_Level int not null CHECK (Stock_Level >=0),
LastRestocked_Date DATE not null)

