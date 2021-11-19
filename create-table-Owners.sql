USE Championship;
GO

CREATE TABLE Owners (
	id INT IDENTITY,
	[name] VARCHAR(45) NOT NULL,
	surname VARCHAR(45) NOT NULL,
	birthday DATE NOT NULL,
	CONSTRAINT PK_Owners_id PRIMARY KEY (id)
);
