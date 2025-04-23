BEGIN TRY
    DECLARE @goodMedicineId INT = (
        SELECT TOP 1 Medicine_Id 
        FROM Inventory 
        WHERE Expiry_Date > GETDATE()
        ORDER BY Expiry_Date DESC
    );
    
    INSERT INTO [Transaction] (
        Prescription_Id,
        Medicine_Id,
        Amount,
        Transaction_Date,
        Transaction_Type
    )
    VALUES (
        'RX101',
        @goodMedicineId,
        10.00,
        GETDATE(),
        'sale'
    );
    
    PRINT 'Test passed - valid medicine was dispensed';
    DELETE FROM [Transaction] 
    WHERE Medicine_Id = @goodMedicineId 
    AND Transaction_Date = CAST(GETDATE() AS DATE);
END TRY
BEGIN CATCH
    PRINT 'Unexpected error: ' + ERROR_MESSAGE();
END CATCH;