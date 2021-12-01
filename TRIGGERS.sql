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

