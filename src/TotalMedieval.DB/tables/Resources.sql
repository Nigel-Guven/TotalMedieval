CREATE TABLE [dbo].[Resources]
(
	[id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [resource_name] NVARCHAR(10) NOT NULL UNIQUE, 
    [resource_value] TINYINT NOT NULL,
)
