USE Championship;
GO

CREATE TABLE Players (
	id INT IDENTITY,
	[name] VARCHAR(45) NOT NULL,
	surname VARCHAR(45) NOT NULL,
	birthday DATE NOT NULL,
	country VARCHAR(45) NOT NULL,
	cost INT NOT NULL,
	CONSTRAINT PK_Players_id PRIMARY KEY (id)
);
