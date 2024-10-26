-- Script adds every faction from KGCM to Factions table

INSERT INTO dbo.CampaignSettings(
	id, 
	start_date, 
	end_date, 
	marian_reforms, 
	rebelling_characters, 
	gladiator_uprising, 
	night_battles, 
	show_date_as_turns, 
	brigand_spawn_value, 
	pirate_spawn_value, 
	free_upkeep_in_forts)
VALUES 
('1180 summer', '1500 summer', 'marian_reforms_disabled', 'rebelling_characters_active', 'gladiator_uprising_disabled', 'night_battles_enabled', 'show_date_as_turns', 20000, 20000, 4  )
