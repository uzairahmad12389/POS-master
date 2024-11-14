-- Insert branches
INSERT INTO Branch (BranchCode, Address, Active, Name, NumberOfEmployee, Phone)
VALUES 
    (1, '123 Main St', TRUE, 'Central Branch', 3, '1234567890'),
    (2, '456 Market St', TRUE, 'Westside Branch', 2, '0987654321');

-- Insert employees (covering all types of roles)
INSERT INTO Employee (EmployeeNumber, BranchCode, Password, Email, Role, Salary)
VALUES 
    (1, 1, '123', 'superadmin@company.com', 'superAdmin', 80000),
    (2, 1, '123', 'manager1@company.com', 'branchManager', 60000),
    (3, 1, '123', 'cashier1@company.com', 'cashier', 40000),
    (4, 2, '123', 'dataentry1@company.com', 'dataEntryOperator', 30000),
    (5, 2, '123', 'manager2@company.com', 'branchManager', 60000);

-- Insert vendors
INSERT INTO Vendor (VendorId, Name)
VALUES 
    (1, 'ABC Suppliers'),
    (2, 'XYZ Wholesale'),
    (3, 'Global Products');

-- Insert products (20 products with different categories)
INSERT INTO Product (ProductId, Name, Category, OriginalPrice, SalePrice, Qty)
VALUES 
    (1, 'Laptop', 'Electronics', 700, 1000, 50),
    (2, 'Phone', 'Electronics', 300, 500, 100),
    (3, 'Tablet', 'Electronics', 200, 350, 70),
    (4, 'TV', 'Electronics', 500, 750, 30),
    (5, 'Headphones', 'Accessories', 50, 80, 200),
    (6, 'Keyboard', 'Accessories', 25, 40, 150),
    (7, 'Mouse', 'Accessories', 15, 25, 200),
    (8, 'Charger', 'Accessories', 10, 20, 300),
    (9, 'USB Cable', 'Accessories', 5, 10, 400),
    (10, 'Smart Watch', 'Electronics', 150, 250, 80),
    (11, 'Camera', 'Electronics', 300, 450, 40),
    (12, 'Projector', 'Electronics', 400, 600, 20),
    (13, 'External Hard Drive', 'Storage', 50, 100, 100),
    (14, 'SSD', 'Storage', 100, 180, 60),
    (15, 'RAM', 'Storage', 20, 35, 150),
    (16, 'Laptop Bag', 'Accessories', 10, 20, 100),
    (17, 'Phone Case', 'Accessories', 5, 10, 300),
    (18, 'Gaming Console', 'Gaming', 200, 300, 25),
    (19, 'Monitor', 'Electronics', 120, 200, 50),
    (20, 'Printer', 'Electronics', 80, 130, 40);

-- Insert purchases (20-30 purchases over different dates)
INSERT INTO Purchase (PurchaseId, ProductId, VendorId, Qty, Price, Timestamp)
VALUES 
    (1, 1, 1, 10, 700, '2022-01-15'),
    (2, 2, 2, 20, 6000, '2022-02-20'),
    (3, 3, 1, 15, 3000, '2022-03-05'),
    (4, 4, 2, 5, 2500, '2023-01-10'),
    (5, 5, 3, 50, 2500, '2023-04-25'),
    (6, 6, 1, 30, 750, '2023-05-15'),
    (7, 7, 2, 40, 600, '2023-06-12'),
    (8, 8, 1, 100, 1000, '2023-07-01'),
    (9, 9, 2, 150, 750, '2023-08-05'),
    (10, 10, 3, 20, 3000, '2023-09-15'),
    (11, 11, 1, 10, 3000, '2023-10-10'),
    (12, 12, 2, 5, 2000, '2023-11-20'),
    (13, 13, 3, 60, 3000, '2024-01-10'),
    (14, 14, 1, 40, 4000, '2024-02-15'),
    (15, 15, 2, 80, 2800, '2024-03-25'),
    (16, 16, 3, 100, 1000, '2024-04-10'),
    (17, 17, 1, 200, 1500, '2024-05-20'),
    (18, 18, 2, 30, 6000, '2024-06-15'),
    (19, 19, 3, 25, 3000, '2024-07-01'),
    (20, 20, 1, 40, 5200, '2024-08-10');

-- Insert sales (20-30 sales over different dates)
INSERT INTO Sale (SaleId, ProductId, Qty, Price, Timestamp)
VALUES 
    (1, 1, 1, 1000, '2022-02-15'),
    (2, 2, 2, 1000, '2022-03-05'),
    (3, 3, 1, 350, '2022-04-20'),
    (4, 4, 1, 750, '2023-01-10'),
    (5, 5, 5, 400, '2023-05-15'),
    (6, 6, 3, 120, '2023-06-12'),
    (7, 7, 2, 50, '2023-07-01'),
    (8, 8, 4, 80, '2023-08-05'),
    (9, 9, 3, 30, '2023-09-15'),
    (10, 10, 2, 500, '2023-10-10'),
    (11, 11, 1, 450, '2023-11-20'),
    (12, 12, 2, 600, '2024-01-10'),
    (13, 13, 5, 100, '2024-02-15'),
    (14, 14, 3, 180, '2024-03-25'),
    (15, 15, 4, 35, '2024-04-10'),
    (16, 16, 3, 20, '2024-05-20'),
    (17, 17, 2, 10, '2024-06-15'),
    (18, 18, 1, 250, '2024-07-01'),
    (19, 19, 2, 200, '2024-08-10'),
    (20, 20, 3, 130, '2024-09-15'),
    (21, 1, 1, 1000, '2023-10-25'),
    (22, 3, 2, 350, '2024-05-05'),
    (23, 5, 3, 80, '2023-09-25'),
    (24, 7, 1, 25, '2024-07-10'),
    (25, 9, 4, 10, '2024-04-15');
