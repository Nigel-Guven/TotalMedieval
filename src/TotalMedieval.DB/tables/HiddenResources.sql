CREATE TABLE [dbo].[HiddenResources]
(
	[hidden_resource_id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[resource_name] NVARCHAR(40) NOT NULL UNIQUE
)
