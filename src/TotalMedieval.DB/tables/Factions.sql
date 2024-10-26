CREATE TABLE [dbo].[Factions]
(
	[id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [name] NVARCHAR(50) NOT NULL UNIQUE, 
    [ai_type] NVARCHAR(50) NOT NULL, 
    [religion] NVARCHAR(50) NOT NULL, 
    [starting_finance] INT NOT NULL, 
    [kings_purse] INT NOT NULL, 
    [long_name] NVARCHAR(100) NOT NULL
);
