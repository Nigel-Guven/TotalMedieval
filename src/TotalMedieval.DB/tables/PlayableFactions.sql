CREATE TABLE [dbo].[PlayableFactions]
(
	[faction_id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    FOREIGN KEY (faction_id) REFERENCES Factions(faction_id),
    [is_playable] BIT NOT NULL, 
)
