USE Championship;
GO

DROP TABLE IF EXISTS Teams;

CREATE TABLE Teams (
	id INT CONSTRAINT PK_Teams_id PRIMARY KEY IDENTITY(1, 1),
	[name] VARCHAR(45) NOT NULL,
	city VARCHAR(45) NOT NULL,
	founded DATE NOT NULL,
	id_coach INT NOT NULL,
	id_owner INT NOT NULL,
	CONSTRAINT FK_Teams_id_coach FOREIGN KEY (id_coach) REFERENCES Coaches (id) ON DELETE CASCADE,
	CONSTRAINT FK_Teams_id_owner FOREIGN KEY (id_owner) REFERENCES Owners (id) ON DELETE CASCADE,
	
);

INSERT INTO Teams ([name], city, founded, id_coach, id_owner)
VALUES 
('Динамо', 'Київ', '1927-05-13', 1, 1),
('Шахтар', 'Донецьк', '1936-05-24', 2, 2),
('Маріуполь', 'Маріуполь', '1960-01-01', 3, 3),
('Минай', 'Ужгород', '2015-01-01', 4, 4),
('Ворскла', 'Полтава', '1955-01-01', 5, 5),
('Дніпро-1', 'Дніпро', '2017-03-10', 6, 6),
('Інгулець', 'Петрове', '2013-01-01', 7, 7),
('Чорноморець', 'Одеса', '1936-01-01', 8, 8),
('Зоря', 'Луганськ', '1923-05-05', 9, 9),
('Олександрія', 'Олександрія', '1948-01-01', 10, 10),
('Львів', 'Львів', '2006-01-01', 11, 11),
('Рух', 'Львів', '2003-01-01', 12, 12),
('Десна', 'Чернігів', '1960-01-01', 13, 13),
('Верес', 'Рівне', '1957-01-01', 14, 14),
('Колос', 'Ковалівка', '2012-01-01', 15, 15),
('Металіст 1925', 'Харків', '2016-08-17', 16, 16);



