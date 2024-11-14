-- Define ENUM type for Employee Role
DO $$ 
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'role_type') THEN
        CREATE TYPE role_type AS ENUM ('superAdmin', 'branchManager', 'cashier', 'dataEntryOperator');
    END IF;
END$$;

-- Branch Table
CREATE TABLE Branch (
    BranchCode SERIAL PRIMARY KEY,
    Address TEXT,
    Active BOOLEAN DEFAULT TRUE,
    Name TEXT,
    NumberOfEmployee INT DEFAULT 0,
    Phone VARCHAR(11)
);

-- Employee Table
CREATE TABLE Employee (
    EmployeeNumber SERIAL PRIMARY KEY,
    BranchCode INT REFERENCES Branch(BranchCode),
    Password TEXT DEFAULT '123',
    Email TEXT,
    Role role_type,
    Salary DECIMAL
);

-- Vendor Table
CREATE TABLE Vendor (
    VendorId SERIAL PRIMARY KEY,
    Name TEXT
);

-- Product Table
CREATE TABLE Product (
    ProductId SERIAL PRIMARY KEY,
    Name TEXT,
    Category TEXT,
    OriginalPrice DECIMAL,
    SalePrice DECIMAL,
    Qty INT
);

-- Purchase Table
CREATE TABLE Purchase (
    PurchaseId SERIAL,
    ProductId INT REFERENCES Product(ProductId),
    VendorId INT REFERENCES Vendor(VendorId),
    Qty INT,
    Price DECIMAL,
    Timestamp TIMESTAMP,
    PRIMARY KEY (PurchaseId, ProductId)
);

-- Sale Table
CREATE TABLE Sale (
    SaleId SERIAL,
    ProductId INT REFERENCES Product(ProductId),
    Qty INT,
    Price DECIMAL,
    Timestamp TIMESTAMP,
    PRIMARY KEY (SaleId, ProductId)
);
