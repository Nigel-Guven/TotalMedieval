-- Script adds every faction from KGCM to Factions table

INSERT INTO dbo.Faction (name, ai_type, religion, starting_finance, kings_purse, long_name)
VALUES 

('antioch',			'balanced smith', 'catholic',		'19000', '3800', 'Principality of Antioch'),
('aztecs',			'balanced smith', 'aztecs',			'36000', '4000', 'Aztec Empire'),
('byzantium',		'balanced smith', 'orthodox',		'38000', '4000', 'Byzantine Empire'),
('denmark',			'balanced smith', 'catholic',		'13000', '2500', 'Kingdom of Denmark'),
('egypt',			'balanced smith', 'islam',			'33000', '3500', 'Abbasid Caliphate'),
('england',			'balanced smith', 'catholic',		'23000', '3200', 'Kingdom of England'),
('france',			'balanced smith', 'catholic',		'30000', '3600', 'Kingdom of France'),
('hre',				'balanced smith', 'catholic',		'34000', '4000', 'Holy Roman Empire'),
('hungary',			'balanced smith', 'catholic',		'16000', '3000', 'Kingdom of Hungary'),
('ireland',			'balanced smith', 'catholic',		'11000', '2000', 'Kingdom of Ireland'),
('jerusalem',		'balanced smith', 'catholic',		'20000', '3800', 'Kingdom of Jerusalem'),
('lithuania',		'balanced smith', 'pagan',			'17500', '3000', 'Grand Duchy of Lithuania'),
('milan',			'balanced smith', 'catholic',		'25000', '3200', 'Grand Duchy of Milan'),
('mongols',			'balanced smith', 'mongol',			'40000', '4000', 'Mongol Empire'),
('moors',			'balanced smith', 'islam',			'31500', '3600', 'Moorish Caliphate'),
('norway',			'balanced smith', 'catholic',		'12500', '2500', 'Kingdom of Norway'),
('novgorod',		'balanced smith', 'orthodox',		'24000', '3200', 'Novgorod Republic'),
('papal_states',	'balanced smith', 'catholic',		'26000', '5000', 'Papal State of the Vatican'),
('poland',			'balanced smith', 'catholic',		'18000', '3200', 'Kingdom of Poland'),
('portugal',		'balanced smith', 'catholic',		'14000', '3200', 'Kingdom of Portugal'),
('russia',			'balanced smith', 'orthodox',		'22500', '3200', 'Kievan Rus'),
('scotland',		'balanced smith', 'catholic',		'11500', '2400', 'Kingdom of Scotland'),
('sicily',			'balanced smith', 'catholic',		'13500', '2500', 'Kingdom of Sicily'),
('spain',			'balanced smith', 'catholic',		'15500', '3200', 'Kingdom of Spain'),
('teutonic_order',	'balanced smith', 'catholic',		'15000', '3800', 'German Order of Knights'),
('timurids',		'balanced smith', 'mongol',			'36000', '4000', 'Timurid Empire'),
('turks',			'balanced smith', 'islam',			'28000', '3600', 'Seljuk Empire'),
('venice',			'balanced smith', 'catholic',		'32000', '3600', 'Serene Republic of Venice'),
('wales',			'balanced smith', 'catholic',		'10500', '2000', 'Principality of Wales'),
('slave',			'balanced smith', 'slave_faction',	'10000', '3000', 'Independent Realms')


