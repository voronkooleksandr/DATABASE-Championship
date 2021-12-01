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

CREATE TABLE NewTeams (
id INT CONSTRAINT PK_NewTeams_id PRIMARY KEY IDENTITY(1, 1),
new_team_id INT NOT NULL,
[name] VARCHAR (30) NOT NULL,
city VARCHAR (45) NOT NULL,
date_connected DATE NOT NULL DEFAULT GETDATE()
);

CREATE TRIGGER NewTeams_INSERT
ON Teams
AFTER INSERT
AS
INSERT INTO NewTeams (new_team_id, [name], city)
SELECT id, 'Нова команда ' + [name], city,  '' буде грати в нашому чемпіонаті'
FROM inserted;

INSERT INTO Players ([name], surname, birthday, country, cost, id_position, id_team)
VALUES
('Кріштіано', 'Роналду', '1985-04-29', 'Португалія', 75000000, 4, 2);

SELECT * FROM Players;

SELECT * FROM Foreigner;

