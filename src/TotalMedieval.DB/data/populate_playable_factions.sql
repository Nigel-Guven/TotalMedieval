-- Populate Playable Factions Table, default

IF OBJECT_ID('tempdb..#factionIdList') IS NOT NULL
    DROP TABLE #factionIdList

CREATE TABLE #factionIdList 
(
    [factionId] INT NOT NULL,
    [is_playable] BIT NOT NULL
)

INSERT INTO #factionIdList(factionId, is_playable)
SELECT 
    id AS factionId, 
    CASE 
        WHEN id = 30 THEN 0
        WHEN id = 18 THEN 0
        WHEN id = 2 THEN 0
        WHEN id IS NOT NULL THEN 1  
        ELSE 0
    END AS is_playable
FROM dbo.Factions

INSERT INTO PlayableFactions (faction_id, is_playable)
SELECT factionId, is_playable
FROM #factionIdList
