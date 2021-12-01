USE Championship;
GO

-- індекс пошуку за прізвищем гравця

CREATE INDEX INX_Players_surname
ON Players (surname);

-- індекс пошуку за грою двох команд

CREATE INDEX INX_Game_
ON Players (surname);
