create table Doctor(
Doctor_Id VARCHAR(35) Primary Key,
Name VARCHAR(35) not null,
License_Num VARCHAR(35) not null UNIQUE,
Specilization VARCHAR(35) not null,
Contact_Info VARCHAR(20) not null)