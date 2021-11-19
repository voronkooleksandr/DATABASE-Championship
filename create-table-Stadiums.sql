USE Championship;
GO

CREATE TABLE Stadiums (
	id INT IDENTITY,
	[name] VARCHAR(45) NOT NULL,
        city VARCHAR(45) NOT NULL,
        capacity INT NOT NULL,
	CONSTRAINT PK_Stadiums_id PRIMARY KEY (id)
);
