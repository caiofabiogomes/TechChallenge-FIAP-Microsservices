IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'ContactsDb')
BEGIN
    CREATE DATABASE ContactsDb;
END;
GO

USE ContactsDb;
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Contacts')
BEGIN
    CREATE TABLE [Contacts] (
        [Id] uniqueidentifier NOT NULL,
        [FirstName] nvarchar(max) NOT NULL,
        [LastName] nvarchar(max) NOT NULL,
        [EmailAddress] nvarchar(max) NOT NULL,
        [PhoneDDD] int NOT NULL,
        [PhoneNumber] int NOT NULL,
        CONSTRAINT [PK_Contacts] PRIMARY KEY ([Id])
    );
END;
GO
