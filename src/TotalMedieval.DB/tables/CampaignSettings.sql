CREATE TABLE [dbo].[CampaignSettings]
(
	[campaign_id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [start_date] NVARCHAR(20) NOT NULL, 
    [end_date] NVARCHAR(20) NOT NULL, 
    [marian_reforms] NVARCHAR(50) NOT NULL, 
    [rebelling_characters] NVARCHAR(50) NOT NULL, 
    [gladiator_uprising] NVARCHAR(50) NOT NULL, 
    [night_battles] NVARCHAR(50) NOT NULL, 
    [show_date_as_turns] NVARCHAR(50) NOT NULL, 
    [brigand_spawn_value] SMALLINT NOT NULL, 
    [pirate_spawn_value] SMALLINT NOT NULL, 
    [free_upkeep_in_forts] INT NOT NULL
)
