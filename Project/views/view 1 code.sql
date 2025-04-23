DROP VIEW IF EXISTS vw_InventoryStatus;
GO

CREATE VIEW vw_InventoryStatus
AS
SELECT 
    m.Medicine_Id,
    m.Name AS Medicine_Name,
    m.Manufacturer,
    SUM(i.Stock_Level) AS Total_Stock,
    MIN(i.Expiry_Date) AS Earliest_Expiry,
    COUNT(DISTINCT s.Supplier_Id) AS Supplier_Count,

    COUNT(i.Inventory_Id) AS Inventory_Records,
    COUNT(t.Transaction_Id) AS Purchase_Transactions,
    COUNT(s.Supplier_Id) AS Supplier_Matches
FROM Medicine m
LEFT JOIN Inventory i ON m.Medicine_Id = i.Medicine_Id
LEFT JOIN [Transaction] t ON m.Medicine_Id = t.Medicine_Id AND t.Transaction_Type = 'purchase'
LEFT JOIN Supplier s ON t.Transaction_Id = s.Supplier_Id
GROUP BY m.Medicine_Id, m.Name, m.Manufacturer
HAVING SUM(ISNULL(i.Stock_Level, 0)) > 0;
GO

