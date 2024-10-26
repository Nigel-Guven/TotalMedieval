CREATE TABLE [dbo].[HiddenResources]
(
	[id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[resource_name] NVARCHAR(40) NOT NULL UNIQUE
)
