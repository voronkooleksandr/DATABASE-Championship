USE Championship;
GO

-- Показ у віртуальній таблиці команд, які грають між собою, дату гри та місце проведення (стадіон)

CREATE VIEW GamesTeamsStadiums
AS SELECT T1.name AS Team_1,
       T2.name AS Team_2,
       S.name AS Stadium,
       G.data_play AS GameDate
FROM Games AS G 
JOIN Teams AS T1 ON G.id_team_1 = T1.id
JOIN Teams AS T2 ON  G.id_team_2 = T2.id
JOIN Stadiums AS S ON G.id_stadium = S.id;

-- Додання нового гравця до представлення, що автоматично додасть також цього гравця в нашу основну таблицю
-- !!!! Конфліктує з тригером дане представлення !!!!

CREATE VIEW PlayerNew
AS SELECT P.[name] AS Name_Player,
          P.surname AS Surname,
          P.birthday AS Birthday,
          P.country AS Country,
          P.cost AS Cost,
          P.id_position AS Position,
          P.id_team AS Team
FROM Players AS P;          

INSERT INTO PlayerNew (Name_Player, Surname, Birthday, Country, Cost, Position, Team)
VALUES
('Андрій', 'Ярмоленко', '1989-10-22', 'Україна', 20000000, 3, 1),
('Андрій', 'Шевченко', '1978-09-29', 'Україна', 45000000, 4, 1);

-- Збільшення з/п гравцю, якого щойно додали чи старому, який був в осн. таблиці, де шукаємо його по імені чи ID

UPDATE PlayerNew
SET Cost = Cost + Cost * 0.22
WHERE Surname = 'Шевченко';

SELECT * FROM PlayerNew;
