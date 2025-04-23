CREATE PROCEDURE sp_FindPatientsByAllergy
    @Allergy VARCHAR(50)
AS
BEGIN
    SELECT 
        Patient_Id,
        Patient_Name,
        Contact,
        Gender
    FROM Patient
    WHERE Patient_History.exist('/history/allergy[contains(., sql:variable("@Allergy"))]') = 1
END
GO