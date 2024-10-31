CREATE TABLE [dbo].[MapCoordinates] (
    [coordinate_id] INT PRIMARY KEY IDENTITY(1,1),
    [map_x] INT NOT NULL CHECK (map_x BETWEEN 0 AND 510),
    [map_y] INT NOT NULL CHECK (map_y BETWEEN 0 AND 337),
    [rgb_id] INT NOT NULL,
    [map_object_id] INT NULL,
    UNIQUE (map_x, map_y),
    FOREIGN KEY (rgb_id) REFERENCES FactionColors(rgb_id),
    FOREIGN KEY (map_object_id) REFERENCES MapObjects(map_object_id)
);
