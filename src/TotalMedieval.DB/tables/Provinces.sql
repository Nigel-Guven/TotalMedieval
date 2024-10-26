CREATE TABLE [dbo].[Provinces]
(
	[id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
	[province_name] NVARCHAR(100) NOT NULL UNIQUE, 
	[province_city_name] NVARCHAR(100) NOT NULL, 
	[province_culture] NVARCHAR(50) NOT NULL, 
	[province_rebel_type] NVARCHAR(100) NOT NULL, 
	[province_color] NVARCHAR(12) NOT NULL,
	[tax_type] INT NOT NULL,
    [fertility] INT NOT NULL
)
