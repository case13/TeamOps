CREATE TABLE Company (
    Id INT NOT NULL AUTO_INCREMENT,
    Registry VARCHAR(30) NOT NULL,
    LegalName VARCHAR(150) NOT NULL,
    Name VARCHAR(150) NOT NULL,
    CreatedAt DATETIME NOT NULL,
    UpdatedAt DATETIME NULL,
    IsActive BIT NOT NULL,
    CONSTRAINT PK_Company PRIMARY KEY (Id)
);

CREATE TABLE Account (
    Id INT NOT NULL AUTO_INCREMENT,
    CompanyId INT NOT NULL,
    Name VARCHAR(150) NOT NULL,
    Email VARCHAR(150) NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    AccountType INT NOT NULL,
    CreatedAt DATETIME NOT NULL,
    UpdatedAt DATETIME NULL,
    IsActive BIT NOT NULL,
    CONSTRAINT PK_Account PRIMARY KEY (Id),
    CONSTRAINT FK_Account_Company FOREIGN KEY (CompanyId) REFERENCES Company(Id)
);

CREATE TABLE Employee (
    Id INT NOT NULL AUTO_INCREMENT,
    CompanyId INT NOT NULL,
    Name VARCHAR(150) NOT NULL,
    Document VARCHAR(30) NULL,
    Email VARCHAR(150) NULL,
    Phone VARCHAR(30) NULL,
    CreatedAt DATETIME NOT NULL,
    UpdatedAt DATETIME NULL,
    IsActive BIT NOT NULL,
    CONSTRAINT PK_Employee PRIMARY KEY (Id),
    CONSTRAINT FK_Employee_Company FOREIGN KEY (CompanyId) REFERENCES Company(Id)
);

CREATE TABLE Team (
    Id INT NOT NULL AUTO_INCREMENT,
    CompanyId INT NOT NULL,
    Name VARCHAR(150) NOT NULL,
    Description VARCHAR(255) NULL,
    CreatedAt DATETIME NOT NULL,
    UpdatedAt DATETIME NULL,
    IsActive BIT NOT NULL,
    CONSTRAINT PK_Team PRIMARY KEY (Id),
    CONSTRAINT FK_Team_Company FOREIGN KEY (CompanyId) REFERENCES Company(Id)
);

CREATE TABLE TeamEmployee (
    Id INT NOT NULL AUTO_INCREMENT,
    TeamId INT NOT NULL,
    EmployeeId INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NULL,
    IsLeader BIT NOT NULL,
    CreatedAt DATETIME NOT NULL,
    UpdatedAt DATETIME NULL,
    IsActive BIT NOT NULL,
    CONSTRAINT PK_TeamEmployee PRIMARY KEY (Id),
    CONSTRAINT FK_TeamEmployee_Team FOREIGN KEY (TeamId) REFERENCES Team(Id),
    CONSTRAINT FK_TeamEmployee_Employee FOREIGN KEY (EmployeeId) REFERENCES Employee(Id)
);

CREATE TABLE Customer (
    Id INT NOT NULL AUTO_INCREMENT,
    CompanyId INT NOT NULL,
    Name VARCHAR(150) NOT NULL,
    Document VARCHAR(30) NULL,
    Email VARCHAR(150) NULL,
    Phone VARCHAR(30) NULL,
    CreatedAt DATETIME NOT NULL,
    UpdatedAt DATETIME NULL,
    IsActive BIT NOT NULL,
    CONSTRAINT PK_Customer PRIMARY KEY (Id),
    CONSTRAINT FK_Customer_Company FOREIGN KEY (CompanyId) REFERENCES Company(Id)
);

CREATE TABLE Product (
    Id INT NOT NULL AUTO_INCREMENT,
    CompanyId INT NOT NULL,
    Name VARCHAR(150) NOT NULL,
    Description VARCHAR(255) NULL,
    MeasurementUnit VARCHAR(20) NOT NULL,
    UnitPrice DECIMAL(18,2) NOT NULL,
    CreatedAt DATETIME NOT NULL,
    UpdatedAt DATETIME NULL,
    IsActive BIT NOT NULL,
    CONSTRAINT PK_Product PRIMARY KEY (Id),
    CONSTRAINT FK_Product_Company FOREIGN KEY (CompanyId) REFERENCES Company(Id)
);

CREATE TABLE ServiceOrder (
    Id INT NOT NULL AUTO_INCREMENT,
    CompanyId INT NOT NULL,
    TeamId INT NOT NULL,
    CustomerId INT NOT NULL,
    Number VARCHAR(30) NOT NULL,
    ServiceDate DATE NOT NULL,
    StartTime TIME NULL,
    EndTime TIME NULL,
    ServiceAddress VARCHAR(255) NULL,
    Description TEXT NULL,
    Status INT NOT NULL,
    CreatedAt DATETIME NOT NULL,
    UpdatedAt DATETIME NULL,
    IsActive BIT NOT NULL,
    CONSTRAINT PK_ServiceOrder PRIMARY KEY (Id),
    CONSTRAINT FK_ServiceOrder_Company FOREIGN KEY (CompanyId) REFERENCES Company(Id),
    CONSTRAINT FK_ServiceOrder_Team FOREIGN KEY (TeamId) REFERENCES Team(Id),
    CONSTRAINT FK_ServiceOrder_Customer FOREIGN KEY (CustomerId) REFERENCES Customer(Id)
);

CREATE TABLE ServiceItem (
    Id INT NOT NULL AUTO_INCREMENT,
    ServiceOrderId INT NOT NULL,
    ProductId INT NULL,
    Description VARCHAR(255) NULL,
    Quantity DECIMAL(18,2) NOT NULL,
    UnitPrice DECIMAL(18,2) NOT NULL,
    TotalPrice DECIMAL(18,2) NOT NULL,
    CreatedAt DATETIME NOT NULL,
    UpdatedAt DATETIME NULL,
    IsActive BIT NOT NULL,
    CONSTRAINT PK_ServiceItem PRIMARY KEY (Id),
    CONSTRAINT FK_ServiceItem_ServiceOrder FOREIGN KEY (ServiceOrderId) REFERENCES ServiceOrder(Id),
    CONSTRAINT FK_ServiceItem_Product FOREIGN KEY (ProductId) REFERENCES Product(Id)
);

CREATE TABLE ServiceLabor (
    Id INT NOT NULL AUTO_INCREMENT,
    ServiceOrderId INT NOT NULL,
    Description VARCHAR(255) NOT NULL,
    Quantity DECIMAL(18,2) NOT NULL,
    UnitPrice DECIMAL(18,2) NOT NULL,
    TotalPrice DECIMAL(18,2) NOT NULL,
    CreatedAt DATETIME NOT NULL,
    UpdatedAt DATETIME NULL,
    IsActive BIT NOT NULL,
    CONSTRAINT PK_ServiceLabor PRIMARY KEY (Id),
    CONSTRAINT FK_ServiceLabor_ServiceOrder FOREIGN KEY (ServiceOrderId) REFERENCES ServiceOrder(Id)
);

CREATE UNIQUE INDEX UX_Company_Registry ON Company (Registry);
CREATE UNIQUE INDEX UX_Account_CompanyId_Email ON Account (CompanyId, Email);

CREATE INDEX IX_Employee_CompanyId ON Employee (CompanyId);
CREATE INDEX IX_Team_CompanyId ON Team (CompanyId);
CREATE INDEX IX_TeamEmployee_TeamId ON TeamEmployee (TeamId);
CREATE INDEX IX_TeamEmployee_EmployeeId ON TeamEmployee (EmployeeId);
CREATE INDEX IX_Customer_CompanyId ON Customer (CompanyId);
CREATE INDEX IX_Product_CompanyId ON Product (CompanyId);
CREATE INDEX IX_ServiceOrder_CompanyId ON ServiceOrder (CompanyId);
CREATE INDEX IX_ServiceOrder_TeamId ON ServiceOrder (TeamId);
CREATE INDEX IX_ServiceOrder_CustomerId ON ServiceOrder (CustomerId);
CREATE INDEX IX_ServiceItem_ServiceOrderId ON ServiceItem (ServiceOrderId);
CREATE INDEX IX_ServiceItem_ProductId ON ServiceItem (ProductId);
CREATE INDEX IX_ServiceLabor_ServiceOrderId ON ServiceLabor (ServiceOrderId);