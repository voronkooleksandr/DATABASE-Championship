USE Championship;
GO

CREATE TABLE Coaches (
	id INT IDENTITY NOT NULL,
	[name] VARCHAR(45) NOT NULL,
  surname VARCHAR(45) NOT NULL,
	birthday DATE NOT NULL,
  country VARCHAR(45) NOT NULL,
	CONSTRAINT PK_Coaches_id PRIMARY KEY (id)
);
