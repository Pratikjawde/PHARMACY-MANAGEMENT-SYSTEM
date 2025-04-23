INSERT INTO Supplier (Name, Contact_Info, Address)
VALUES 
('MedSupply Co', '800-1111', '123 Pharma St'),
('DrugDist Inc', '800-2222', '456 Medical Ave'),
('HealthCare Suppliers', '800-3333', '789 Wellness Blvd'),
('PharmaDirect', '800-4444', '321 Cure Lane'),
('MediSource', '800-5555', '654 Health Rd');

INSERT INTO Prescription (Prescription_Id, Patient_Id, Doctor_Id, Issue_Date)
VALUES 
('RX101', 'PAT01', 'DOC01', '2023-01-10'),
('RX102', 'PAT02', 'DOC02', '2023-01-15'),
('RX103', 'PAT03', 'DOC03', '2023-01-20'),
('RX104', 'PAT04', 'DOC04', '2023-01-25'),
('RX105', 'PAT05', 'DOC05', '2023-01-30');

INSERT INTO Inventory (Medicine_Id, Expiry_Date, Stock_Level, LastRestocked_Date)
VALUES 
(1, '2024-06-30', 150, '2023-01-05'),
(2, '2024-07-31', 200, '2023-01-10'),
(3, '2024-08-31', 100, '2023-01-15'),
(4, '2024-09-30', 180, '2023-01-20'),
(5, '2024-10-31', 75, '2023-01-25');

INSERT INTO [Transaction] (Prescription_Id, Medicine_Id, Amount, Transaction_Date, Transaction_Type)
VALUES 
('RX101', 1, 12.99, '2023-01-10', 'sale'),
('RX102', 2, 8.50, '2023-01-15', 'sale'),
('RX103', 3, 15.75, '2023-01-20', 'sale'),
('RX104', 4, 5.25, '2023-01-25', 'sale'),
('RX105', 5, 22.40, '2023-01-30', 'sale'),
(NULL, 1, 10.00, '2023-01-05', 'purchase'),
(NULL, 2, 7.00, '2023-01-10', 'purchase'),
(NULL, 3, 12.00, '2023-01-15', 'purchase'),
(NULL, 4, 4.00, '2023-01-20', 'purchase'),
(NULL, 5, 18.00, '2023-01-25', 'purchase');
