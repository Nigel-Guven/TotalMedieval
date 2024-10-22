CREATE TABLE [dbo].[Resource]
(
	[id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [resource_name] NCHAR(10) NOT NULL, 
    [resource_value] TINYINT NOT NULL,
)
