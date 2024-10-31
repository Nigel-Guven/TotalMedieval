CREATE TABLE [dbo].[ProvinceHiddenResources]
(
	[province_id] INT,
    [hidden_resource_id] INT,
    PRIMARY KEY (province_id, hidden_resource_id),
    FOREIGN KEY (province_id) REFERENCES Provinces(province_id),
    FOREIGN KEY (hidden_resource_id) REFERENCES HiddenResources(hidden_resource_id)
)


