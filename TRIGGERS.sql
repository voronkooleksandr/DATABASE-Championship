USE Championship;
GO

-- при додані нового гравця його вартість має зрости на 10%

CREATE TRIGGER Players_INSERT_UPDATE
ON Players
AFTER INSERT, UPDATE 
AS UPDATE Players
SET cost = cost + cost * 0.10
WHERE id = (SELECT id FROM inserted);

INSERT INTO Players ([name], surname, birthday, country, cost, id_position, id_team)
VALUES
('Сергій', 'Ребров', '1975-04-22', 'Україна', 19000000, 4, 1);

USE Championship;
GO

DROP TABLE IF EXISTS Foreigner;

CREATE TABLE NewPlayersInfo (
id INT CONSTRAINT PK_NewTeams_id PRIMARY KEY IDENTITY(1, 1),
new_players_id INT NOT NULL,
information VARCHAR(200) NOT NULL,
date_connected DATE NOT NULL DEFAULT GETDATE()
);

CREATE TRIGGER NewPlayersInfo_INSERT
ON Players
AFTER INSERT
AS
INSERT INTO NewPlayersInfo (new_players_id, information)
SELECT id, 'Новий гравець ' + Players.[name] + Players.[name] + ' буде грати в нашому чемпіонаті'
FROM inserted;


INSERT INTO Players ([name], city, founded, id_coach, id_owner)
VALUES 
('Нива', 'Тернопіль', '1978-01-01', 1, 1),

SELECT * FROM NewPlayersInfo;



