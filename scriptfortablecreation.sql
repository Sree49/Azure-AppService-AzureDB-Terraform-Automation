IF NOT EXISTS (
    SELECT *
    FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_SCHEMA = 'dbo'
      AND TABLE_NAME = 'Products'
)
BEGIN
    CREATE TABLE dbo.Products
    (
        ProductID INT PRIMARY KEY,
        ProductName VARCHAR(1000),
        Quantity INT
    );

    INSERT INTO dbo.Products (ProductID, ProductName, Quantity)
    VALUES
        (1, 'Table', 100),
        (2, 'Chairs', 200),
        (3, 'Printer', 300);
END;

IF NOT EXISTS (
    SELECT 1
    FROM dbo.Products
    WHERE ProductID = 4
)
BEGIN
    INSERT INTO dbo.Products (ProductID, ProductName, Quantity)
    VALUES (4, 'Books', 600);
END;