-- Populate Playable Factions Table, default

-- Enable IDENTITY_INSERT for the PlayableFactions table
SET IDENTITY_INSERT PlayableFactions ON;

IF OBJECT_ID('tempdb..#factionIdList') IS NOT NULL
    DROP TABLE #factionIdList

CREATE TABLE #factionIdList 
(
    [factionId] INT NOT NULL,
    [is_playable] BIT NOT NULL
)

INSERT INTO #factionIdList(factionId, is_playable)
SELECT 
    faction_id AS factionId, 
    CASE 
        WHEN faction_id = 30 THEN 0
        WHEN faction_id = 18 THEN 0
        WHEN faction_id = 2 THEN 0
        WHEN faction_id IS NOT NULL THEN 1  
        ELSE 0
    END AS is_playable
FROM dbo.Factions

INSERT INTO PlayableFactions (faction_id, is_playable)
SELECT factionId, is_playable
FROM #factionIdList

-- Disable IDENTITY_INSERT for the PlayableFactions table
SET IDENTITY_INSERT PlayableFactions OFF;
