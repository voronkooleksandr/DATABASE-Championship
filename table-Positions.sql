USE Championship;
GO

CREATE TABLE Positions (
	id INT IDENTITY(1, 1),
	[name] VARCHAR(45) NOT NULL,
	CONSTRAINT PK_Positions_id PRIMARY KEY (id)
);

INSERT INTO Positions ([name])
VALUES 
('воротар'),
('захисник'),
('півзахисник'),
('нападник');

