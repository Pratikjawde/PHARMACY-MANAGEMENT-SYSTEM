
SELECT * FROM [Transaction] 
WHERE Transaction_Date = CAST(GETDATE() AS DATE)
ORDER BY Transaction_Date DESC;