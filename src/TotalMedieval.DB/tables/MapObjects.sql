CREATE TABLE [dbo].[MapObjects]
(
    [map_object_id] INT PRIMARY KEY IDENTITY(1,1),
    [object] NVARCHAR(50) NOT NULL UNIQUE
);
