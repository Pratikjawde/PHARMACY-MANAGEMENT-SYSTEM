CREATE PROCEDURE sp_UpdatePatientHistory
    @PatientId VARCHAR(35),
    @Allergy VARCHAR(50) = NULL,
    @Condition VARCHAR(50) = NULL
AS
BEGIN
    DECLARE @NewHistory XML
    SET @NewHistory = (
        SELECT 
            @Allergy AS "allergy",
            @Condition AS "condition"
        FOR XML PATH('history')
    )   
    UPDATE Patient
    SET Patient_History = @NewHistory
    WHERE Patient_Id = @PatientId
    
    SELECT 'Patient history updated successfully' AS Result
END
GO