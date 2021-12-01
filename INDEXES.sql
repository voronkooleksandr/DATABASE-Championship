USE Championship;
GO

-- індекс пошуку за прізвищем гравця

CREATE INDEX INX_Players_surname
ON Players (surname);

-- індекс пошуку пари команд, які грають між собою

CREATE INDEX INX_Game_id_teams
ON Gamesrs (id_team_1,  id_team_2);
