CREATE PROCEDURE sp_GetLowStockMedicines
    @Threshold INT = 50
AS
BEGIN
    SELECT 
        m.Medicine_Id,
        m.Name AS Medicine_Name,
        m.Manufacturer,
        i.Stock_Level,
        i.Expiry_Date,
        CASE 
            WHEN i.Stock_Level < @Threshold THEN 'Order Now'
            ELSE 'Stock OK'
        END AS Status
    FROM Medicine m
    JOIN Inventory i ON m.Medicine_Id = i.Medicine_Id
    WHERE i.Stock_Level < @Threshold
    ORDER BY i.Stock_Level ASC
END
