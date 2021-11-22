USE Championship;
GO

CREATE TABLE Teams (
	id INT IDENTITY(1, 1),
	[name] VARCHAR(45) NOT NULL,
	city VARCHAR(45) NOT NULL,
	founded DATE NOT NULL,
	CONSTRAINT PK_Teams_id PRIMARY KEY (id)
);


INSERT INTO Positions ([name], city, founded)
VALUES 
('Динамо', 'Київ', 13-05-1927),
('Шахтар', 'Донецьк', 24-05-1936),
('Маріуполь', 'Маріуполь', 01-01-1960),
('Минай', 'Ужгород', 01-01-2015),
('Ворскла', 'Полтава', 01-01-1955),
('Дніпро-1', 'Дніпро', 10-03-2017),
('Інгулець', 'Петрове', 01-01-2013),
('Чорноморець', 'Одеса', 01-01-1936),
('Зоря', 'Луганськ', 05-05-1923),
('Олександрія', 'Олександрія', 01-01-1948),
('Львів', 'Львів', 01-01-2006),
('Рух', 'Львів', 01-01-2003),
('Десна', 'Чернігів', 01-01-1960),
('Верес', 'Рівне', 01-01-1957),
('Колос', 'Ковалівка', 01-01-2012),
('Металіст 1925', 'Харків', 17-08-2016);


