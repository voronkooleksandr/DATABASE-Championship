USE Championship;
GO

-- Показ у віртуальній таблиці команд, які грають між собою, дату та місце проведення (стадіон)

CREATE VIEW GamesTeamsStadiums AS
SELECT Games.team_1 AS Team_1,
       Games.team_2 AS Team_2,
       Stadiums.id_stadium_1 AS Stadium,
       Games
FROM Games JOIN Teams ON Games.team_1 = Teams.id
JOIN Teams ON Games.team_2 = Teams.id
JOIN Studiums ON Stadiums.id_stadium_1 = Stadiums.id;
       
