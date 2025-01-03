-- Script adds every hidden resource from KGCM to a hidden resource table

INSERT INTO dbo.HiddenResources(resource_name) 
VALUES
('acre'),										-- City Specific, Triggers Army Spawn
('america'),									-- MULTI Triggers new world exploration
('antioch'),									-- City Specific, Triggers Army Spawn
('arguin'),										-- City Specific, Triggers exploration
('arhus'),										-- City Specific, Triggers Army Spawn
('assassins_guild'),							-- MULTI Hungary, Allows Spawn of Assassins
('atlantic'),									-- MULTI Trade Bonus, Region Specific, Longer Trade Routes, Spawning of Ocean Going Vessels
('baghdad'),									-- City Specific, Triggers Army Spawn
('budapest'),									-- City Specific, Triggers Army Spawn
('caernarvon'),									-- City Specific, Triggers Army Spawn
('cairo'),										-- City Specific, Triggers Army Spawn
('constantinople'),								-- City Specific, Triggers Army Spawn
('cork'),										-- City Specific, Triggers Army Spawn
('crusade'),									-- MULTI Possible Crusading
('edinburgh'),									-- City Specific, Triggers Army Spawn
('explorers_guild'),							-- MULTI, Bonus to Map movement
('frankfurt'),									-- City Specific, Triggers Army Spawn
('granada'),									-- City Specific, Triggers Army Spawn
('horde_target'),								-- MULTI, Mongols/Timurids will prioritize capture
('jerusalem'),									-- City Specific, Triggers Army Spawn
('jihad'),										-- MULTI, Muslims will prioritize captur
('kiev'),										-- City Specific, Triggers Army Spawn
('knights_of_santiago_chapter_house'),			-- MULTI, Spain and Portugal, building of Santiago Knights
('krak_de_chevaliers'),							-- City Specific, Triggers Army Spawn
('krakow'),										-- City Specific, Triggers Army Spawn
('lisbon'),										-- City Specific, Triggers Army Spawn
('marienburg'),									-- City Specific, Triggers Army Spawn
('milan'),										-- City Specific, Triggers Army Spawn
('no_brigands'),								-- Prevents Rebel Spawn, UNUSED
('no_pirates'),									-- Prevents Rebel Spawn, UNUSED
('nottingham'),									-- City Specific, Triggers Army Spawn
('novgorod'),									-- City Specific, Triggers Army Spawn, Fur Trade Bonus
('oslo'),										-- City Specific, Triggers Army Spawn
('palermo'),									-- City Specific, Triggers Army Spawn
('paris'),										-- City Specific, Triggers Army Spawn
('rome'),										-- City Specific, Triggers Army Spawn
('sarkel'),										-- City Specific, Triggers Army Spawn
('st_johns_chapter_house'),						-- MULTI, Christian Factions, building of Hospitaller Knights
('swordsmiths_guild'),							-- MULTI, All Eurasia Factions, Weapon bonus
('templars_chapter_house'),						-- MULTI, Christian Factions, building of Templar Knights
('teutonic_knights_chapter_house'),				-- MULTI, HRE/Teutonic Factions, building of Teutonic Knights
('toledo'),										-- City Specific, Triggers Army Spawn
('venice'),										-- City Specific, Triggers Army Spawn
('vilnius'),									-- City Specific, Triggers Army Spawn
('woodsmens_guild');							-- MULTI, England, Archery bonus
												