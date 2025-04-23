SELECT m.Medicine_Id, m.Name, i.Stock_Level 
FROM Medicine m
JOIN Inventory i ON m.Medicine_Id = i.Medicine_Id
ORDER BY i.Stock_Level