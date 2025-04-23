DROP TRIGGER IF EXISTS tr_PreventExpiredDispensing;
GO

CREATE TRIGGER tr_PreventExpiredDispensing
ON [Transaction]
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN Inventory inv ON i.Medicine_Id = inv.Medicine_Id
        WHERE i.Transaction_Type = 'sale' AND inv.Expiry_Date < GETDATE()
    )
    BEGIN
        RAISERROR('Cannot dispense expired medication', 16, 1)
        ROLLBACK TRANSACTION
    END
END
GO