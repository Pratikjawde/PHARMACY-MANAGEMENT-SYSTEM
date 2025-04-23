CREATE PROCEDURE sp_GetPatientHistoryDetails
    @PatientId VARCHAR(35)
AS
BEGIN
    SELECT
        Patient_Id,
        Patient_Name,
        Patient_History.value('(/history/allergy)[1]', 'VARCHAR(50)') AS Allergy,
        Patient_History.value('(/history/condition)[1]', 'VARCHAR(50)') AS MedicalCondition
    FROM Patient
    WHERE Patient_Id = @PatientId
END
GO