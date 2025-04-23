CREATE TRIGGER tr_UpdateInventoryAfterSale
ON [Transaction]
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE Transaction_Type = 'sale')
    BEGIN
        UPDATE i
        SET i.Stock_Level = i.Stock_Level - 1
        FROM Inventory i
        JOIN inserted ON i.Medicine_Id = inserted.Medicine_Id
        WHERE inserted.Transaction_Type = 'sale'
        
        PRINT 'Inventory updated after sale transaction'
    END
END
