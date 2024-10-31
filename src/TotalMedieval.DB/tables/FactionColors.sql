CREATE TABLE [dbo].[FactionColors] (
    [rgb_id] INT PRIMARY KEY IDENTITY(1,1),
    [red] INT NOT NULL CHECK (red BETWEEN 0 AND 255),
    [green] INT NOT NULL CHECK (green BETWEEN 0 AND 255),
    [blue] INT NOT NULL CHECK (blue BETWEEN 0 AND 255),
    UNIQUE (red, green, blue)
);