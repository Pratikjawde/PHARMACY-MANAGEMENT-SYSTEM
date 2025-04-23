DROP VIEW IF EXISTS vw_PrescriptionSummary;
GO

CREATE VIEW vw_PrescriptionSummary
AS
SELECT 
    p.Prescription_Id,
    p.Issue_Date,
    pat.Patient_Name,
    pat.Gender,
    doc.Name AS Doctor_Name,
    doc.Specilization,
    med.Name AS Medicine_Name,
    med.Price,
    t.Transaction_Date,
    emp.Name AS Dispensed_By
FROM Prescription p
INNER JOIN Patient pat ON p.Patient_Id = pat.Patient_Id
INNER JOIN Doctor doc ON p.Doctor_Id = doc.Doctor_Id
LEFT JOIN [Transaction] t ON p.Prescription_Id = t.Prescription_Id
LEFT JOIN Medicine med ON t.Medicine_Id = med.Medicine_Id
LEFT JOIN Employee emp ON 
    (t.Transaction_Id IS NOT NULL AND 
     emp.Employee_Id = CASE 
        WHEN ISNUMERIC(t.Transaction_Id) = 1 
        THEN CAST(t.Transaction_Id AS VARCHAR(20))
        ELSE NULL 
     END);
GO