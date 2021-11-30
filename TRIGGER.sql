USE Championship;
GO

CREATE TRIGGER Players_UPDATE_cost
ON Players
AFTER UPDATE, INSERT 
AS UPDATE Players
SET cost = cost + cost * 0.22
WHERE id = (SELECT id FROM inserted);

SELECT * FROM Players_UPDATE_cost;

