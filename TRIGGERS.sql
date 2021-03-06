USE Championship;
GO

-- при додані нового гравця його вартість має зрости на 10%

CREATE TRIGGER Players_INSERT_UPDATE_cost
ON Players
INSTEAD OF INSERT
AS UPDATE Players
SET cost = cost + cost * 0.10
WHERE id = (SELECT id FROM inserted);

INSERT INTO Players ([name], surname, birthday, country, cost, id_position, id_team)
VALUES
('Сергій', 'Ребров', '1975-04-22', 'Україна', 19000000, 4, 1);

-- додавання нового гравця, який показується в таблиці NewPlayersInfo ------ПРАЦЮЄ ТРИГЕР ------

CREATE OR ALTER TRIGGER NewPlayersInfo_INSERT
ON Players
AFTER INSERT
AS
BEGIN
INSERT INTO NewPlayersInfo (new_players_id, information, date_connected)
SELECT id, 'Новий гравець ' + surname + ' буде грати в нашому чемпіонаті', GETDATE()
FROM inserted
END;

INSERT INTO Players ([name], surname, birthday, country, cost, id_position, id_team)
VALUES
('Ліонель', 'Мессі', '1986-11-13', 'Аргентина', 80000000, 4, 1);

-- Нова таблиця для нових гравців, які приходять в команду

DROP TABLE IF EXISTS NewPlayersInfo;

CREATE TABLE NewPlayersInfo (
id INT CONSTRAINT PK_NewPlayersInfo_id PRIMARY KEY IDENTITY(1, 1),
new_players_id INT NOT NULL,
information VARCHAR(200) NOT NULL,
date_connected DATE NOT NULL DEFAULT GETDATE()
);

SELECT * FROM NewPlayersInfo;
SELECT * FROM Players;


