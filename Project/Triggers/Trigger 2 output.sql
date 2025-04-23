DISABLE TRIGGER tr_PreventExpiredDispensing ON [Transaction];

BEGIN TRANSACTION;
    DECLARE @TestMedicineId INT = 1;
    DECLARE @InitialStock INT = (SELECT Stock_Level FROM Inventory WHERE Medicine_Id = @TestMedicineId);

    INSERT INTO [Transaction] (
        Prescription_Id,
        Medicine_Id,
        Amount,
        Transaction_Date,
        Transaction_Type
    )
    VALUES (
        'RX101',
        @TestMedicineId,
        12.99,
        GETDATE(),
        'sale'
    );
    
    -- Verify results
    SELECT 
        @InitialStock AS Initial_Stock,
        Stock_Level AS New_Stock,
        @InitialStock - Stock_Level AS Reduction_Amount
    FROM Inventory 
    WHERE Medicine_Id = @TestMedicineId;
    
    -- Check trigger messages in the Messages tab
COMMIT TRANSACTION;

-- 3. Re-enable the safety trigger
ENABLE TRIGGER tr_PreventExpiredDispensing ON [Transaction];