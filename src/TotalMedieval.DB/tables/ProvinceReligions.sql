CREATE TABLE [dbo].[ProvinceReligions]
(
	province_id INT,
    religion_id INT,
    percentage_value INT,
    PRIMARY KEY (province_id, religion_id),
    FOREIGN KEY (religion_id) REFERENCES Provinces(province_id),
    FOREIGN KEY (percentage_value) REFERENCES Religions(religion_id)
)
