CREATE TABLE [dbo].[ProvinceResources]
(
	province_id INT,
    resource_id INT,
    x INT NOT NULL,
    y INT NOT NULL,
    PRIMARY KEY (province_id, resource_id),
    FOREIGN KEY (province_id) REFERENCES Provinces(province_id),
    FOREIGN KEY (resource_id) REFERENCES Resources(resource_id)
)