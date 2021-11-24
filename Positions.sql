USE Championship;
GO

DROP TABLE IF EXISTS Positions;

CREATE TABLE Positions (
	id INT CONSTRAINT PK_Positions_id PRIMARY KEY IDENTITY(1, 1),
	[name] VARCHAR(45) NOT NULL
);

INSERT INTO Positions ([name])
VALUES 
('воротар'),
('захисник'),
('півзахисник'),
('нападник');

