USE Championship;
GO

-- Показ у віртуальній таблиці команд, які грають між собою, дату гри та місце проведення (стадіон)

CREATE VIEW GamesTeamsStadiums
AS 
SELECT Games.team_1 AS Team_1,
       Games.team_2 AS Team_2,
       Stadiums.id_stadium AS Stadium,
       Games.data_play AS GameDate
FROM Games JOIN Teams ON Games.team_1 = Teams (id)
JOIN Teams ON Games.team_2 = Teams (id)
JOIN Studiums ON Games.id_stadium = Stadiums (id);

CREATE VIEW GamesTeamsStadiums
AS 
SELECT T1.name AS Team_1,
       T2.name AS Team_2,
       S.name AS Stadium,
       G.data_play AS GameDate
FROM Games AS G 
JOIN Teams AS T1 ON G.id_team_1 = T1.id
JOIN Teams AS T2 ON  G.id_team_2 = T2.id
JOIN Stadiums AS S ON G.id_stadium = S.id;

-- Додання нового гравця до представлення, що автоматично додасть також цього гравця в нашу основну таблицю

CREATE VIEW PlayerNew
AS SELECT Players.[name] AS Name_Player,
          Players.surname AS Surname,
          Players.birthday AS Birthday,
          Players.country AS Country,
          Players.cost AS Cost,
          Players.id_position AS Position,
          Players.id_team AS Team
FROM Players;           

INSERT INTO PlayerNew (Name_Player, Surname, Birthday, Country, Position, Team)
VALUES ('Андрій', 'Ярмоленко', '1989-10-23', 'Україна', 2000000, 3, 1);

-- Збільшення з/п гравцю, якого щойно додали чи старому, який був в осн. таблиці, де шукаємо його по імені чи ID

UPDATE PlayerNew
SET Cost = Cost + Cost * 0,20
WHERE Surname = 'Ярмоленко';
       
