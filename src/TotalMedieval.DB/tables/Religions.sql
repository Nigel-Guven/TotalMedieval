CREATE TABLE [dbo].[Religions]
(
	[religion_id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [religion_name] NVARCHAR(50) NOT NULL UNIQUE
)
