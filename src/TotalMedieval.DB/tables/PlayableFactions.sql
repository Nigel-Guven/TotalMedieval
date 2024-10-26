CREATE TABLE [dbo].[PlayableFactions]
(
	[id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    FOREIGN KEY (id) REFERENCES Factions(id),
    [is_playable] BIT NOT NULL, 
)
