USE Championship;
GO

-- макс. сума очок по одній з команд

CREATE PROCEDURE max_points_by_team_1
   @team VARCHAR(30),
   @max_points INT OUTPUT
AS
SELECT @max_points = SUM(G.score_team_1)
FROM Games AS G
JOIN Teams AS T1 
ON G.id_team_1 = T1.id
WHERE T1.[name] = @team;

EXEC max_points_by_team_1 'Динамо',
     @max_points OUTPUT
SELECT @max_points
