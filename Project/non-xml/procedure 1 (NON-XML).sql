CREATE PROCEDURE sp_GetPrescriptionDetails
    @PrescriptionId VARCHAR(50)
AS
BEGIN
    SELECT 
        p.Prescription_Id,
        p.Issue_Date,
        pat.Patient_Name,
        pat.Contact AS Patient_Contact,
        doc.Name AS Doctor_Name,
        doc.Specilization AS Doctor_Specialization,
        med.Name AS Medicine_Name,
        med.Price,
        t.Transaction_Date
    FROM Prescription p
    JOIN Patient pat ON p.Patient_Id = pat.Patient_Id
    JOIN Doctor doc ON p.Doctor_Id = doc.Doctor_Id
    JOIN [Transaction] t ON p.Prescription_Id = t.Prescription_Id
    JOIN Medicine med ON t.Medicine_Id = med.Medicine_Id
    WHERE p.Prescription_Id = @PrescriptionId
END
