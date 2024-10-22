CREATE TABLE [dbo].[PlayableFactions]
(
	[id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [faction_id] INT NOT NULL, 
    [is_playable] BIT NOT NULL, 
)
