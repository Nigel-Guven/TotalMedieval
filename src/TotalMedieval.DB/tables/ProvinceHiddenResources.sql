CREATE TABLE [dbo].[ProvinceHiddenResources]
(
	province_id INT,
    resource_id INT,
    PRIMARY KEY (province_id, resource_id),
    FOREIGN KEY (province_id) REFERENCES Provinces(id),
    FOREIGN KEY (resource_id) REFERENCES HiddenResources(id)
)
