USE Championship;
GO

DROP TABLE IF EXISTS Stadiums;

CREATE TABLE Stadiums (
	id INT CONSTRAINT PK_Stadiums_id PRIMARY KEY IDENTITY(1, 1),
	[name] VARCHAR(100) NOT NULL,
        city VARCHAR(45) NOT NULL,
        capacity INT NOT NULL
);

INSERT INTO Stadiums ([name], city, capacity)
VALUES
('НСК Олімпійський', 'Київ', 70050),
('НСК Олімпійський', 'Київ', 70050),
('імені Володимира Бойка', 'Маріуполь', 12680),
('Авангард', 'Ужгород', 12000),
('Ворскла» ім. Олексія Бутовського', 'Полтава', 24795),
('Дніпро-Арена', 'Дніпро', 31003),
('Зірка', 'Кропивницький', 13305),
('Чорноморець', 'Одеса', 34164),
('Славутич-Арена', 'Запоріжжя', 11883),
('КСК Ніка', 'Олександрія', 7000),
('Україна', 'Львів', 28051),
('Арена Львів', 'Львів', 34915),
('імені Ю. Гагаріна', '	Чернігів', 12060),
('Авангард', 'Луцьк', 12000),
('Колос', 'Ковалівка', 	5000),
('Металіст', 'Харків', 	40003);
