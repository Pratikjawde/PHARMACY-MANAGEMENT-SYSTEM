CREATE PROCEDURE sp_AddPatientWithHistory				
    @PatientId VARCHAR(35),
    @Name VARCHAR(35),
    @Contact VARCHAR(25),
    @Gender CHAR(1),
    @Allergy VARCHAR(50) = NULL,
    @Condition VARCHAR(50) = NULL
AS
BEGIN
    DECLARE @History XML

    SET @History = (
        SELECT 
            @Allergy AS "allergy",
            @Condition AS "condition"
        FOR XML PATH('history')
    )
    
    INSERT INTO Patient (Patient_Id, Patient_Name, Contact, Patient_History, Gender)
    VALUES (@PatientId, @Name, @Contact, @History, @Gender)
    
    SELECT 'Patient added successfully' AS Result
END
GO