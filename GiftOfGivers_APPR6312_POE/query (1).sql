-- Table for Identity Users
CREATE TABLE AspNetUsers (
    Id NVARCHAR(450) NOT NULL PRIMARY KEY,
    UserName NVARCHAR(256) NULL,
    NormalizedUserName NVARCHAR(256) NULL,
    Email NVARCHAR(256) NULL,
    NormalizedEmail NVARCHAR(256) NULL,
    EmailConfirmed BIT NOT NULL,
    PasswordHash NVARCHAR(MAX) NULL,
    SecurityStamp NVARCHAR(MAX) NULL,
    ConcurrencyStamp NVARCHAR(MAX) NULL,
    PhoneNumber NVARCHAR(MAX) NULL,
    PhoneNumberConfirmed BIT NOT NULL,
    TwoFactorEnabled BIT NOT NULL,
    LockoutEnd DATETIMEOFFSET NULL,
    LockoutEnabled BIT NOT NULL,
    AccessFailedCount INT NOT NULL,
    Firstname NVARCHAR(256) NULL,
    Lastname NVARCHAR(256) NULL
);

-- Table for Identity Roles
CREATE TABLE AspNetRoles (
    Id NVARCHAR(450) NOT NULL PRIMARY KEY,
    Name NVARCHAR(256) NULL,
    NormalizedName NVARCHAR(256) NULL,
    ConcurrencyStamp NVARCHAR(MAX) NULL
);

-- Table for Identity User Roles
CREATE TABLE AspNetUserRoles (
    UserId NVARCHAR(450) NOT NULL,
    RoleId NVARCHAR(450) NOT NULL,
    PRIMARY KEY (UserId, RoleId),
    FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id) ON DELETE CASCADE,
    FOREIGN KEY (RoleId) REFERENCES AspNetRoles(Id) ON DELETE CASCADE
);

-- Table for Identity Role Claims
CREATE TABLE AspNetRoleClaims (
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    RoleId NVARCHAR(450) NOT NULL,
    ClaimType NVARCHAR(MAX) NULL,
    ClaimValue NVARCHAR(MAX) NULL,
    FOREIGN KEY (RoleId) REFERENCES AspNetRoles(Id) ON DELETE CASCADE
);

-- Table for Identity User Claims
CREATE TABLE AspNetUserClaims (
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    UserId NVARCHAR(450) NOT NULL,
    ClaimType NVARCHAR(MAX) NULL,
    ClaimValue NVARCHAR(MAX) NULL,
    FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id) ON DELETE CASCADE
);

-- Table for Identity User Logins
CREATE TABLE AspNetUserLogins (
    LoginProvider NVARCHAR(450) NOT NULL,
    ProviderKey NVARCHAR(450) NOT NULL,
    ProviderDisplayName NVARCHAR(MAX) NULL,
    UserId NVARCHAR(450) NOT NULL,
    PRIMARY KEY (LoginProvider, ProviderKey),
    FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id) ON DELETE CASCADE
);

-- Table for Identity User Tokens
CREATE TABLE AspNetUserTokens (
    UserId NVARCHAR(450) NOT NULL,
    LoginProvider NVARCHAR(450) NOT NULL,
    Name NVARCHAR(450) NOT NULL,
    Value NVARCHAR(MAX) NULL,
    PRIMARY KEY (UserId, LoginProvider, Name),
    FOREIGN KEY (UserId) REFERENCES AspNetUsers(Id) ON DELETE CASCADE
);

-- Table for Monetary Donations
CREATE TABLE MonetaryDon (
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    Name NVARCHAR(MAX) NOT NULL,
    Amount INT NOT NULL,
    Datedata DATETIME2 NOT NULL
);

-- Table for Goods Donations
CREATE TABLE GoodsDonations (
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    Name NVARCHAR(MAX) NOT NULL,
    Category NVARCHAR(MAX) NOT NULL,
    NumOfItems INT NOT NULL,
    Description NVARCHAR(MAX) NOT NULL,
    GoodsDate DATETIME2 NOT NULL
);

-- Table for Disaster Data
CREATE TABLE DisasterData (
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    Name NVARCHAR(MAX) NOT NULL,
    Description NVARCHAR(MAX) NOT NULL,
    Location NVARCHAR(MAX) NOT NULL,
    AidType NVARCHAR(MAX) NOT NULL,
    StartDate DATETIME2 NOT NULL,
    EndDate DATETIME2 NOT NULL
);

-- Table for Add Goods
CREATE TABLE AddGoods (
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    Goods NVARCHAR(MAX) NOT NULL
);

-- Table for Disaster Money
CREATE TABLE DisasterMoney (
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    Disaster NVARCHAR(MAX) NOT NULL,
    Amount INT NOT NULL
);

-- Table for Disaster Goods
CREATE TABLE DisasterGoods (
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    Disaster NVARCHAR(MAX) NOT NULL,
    Category NVARCHAR(MAX) NOT NULL,
    NumOfItems INT NOT NULL,
    Description NVARCHAR(MAX) NOT NULL
);
