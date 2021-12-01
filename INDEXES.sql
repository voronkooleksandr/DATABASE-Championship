USE Championship;
GO

-- індекс пошуку за прізвищем гравця

CREATE INDEX INX_Players_surname
ON Players (surname);

-- індекс пошуку пари команд, які грають між собою та дату гри. Для зменшення розміру ключа (3 bite) data_play виносимо в неключовий стовбець

CREATE INDEX INX_Game_id_teams_date
ON Games (id_team_1, id_team_2)
INCLUDE (data_play);



