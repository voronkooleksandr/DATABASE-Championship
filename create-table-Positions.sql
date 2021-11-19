USE Championship;
GO

CREATE TABLE Positions (
	id INT IDENTITY,
	[name] VARCHAR(45) NOT NULL,
	CONSTRAINT PK_Positions_id PRIMARY KEY (id)
);
