CREATE DATABASE Championship;

USE Championship;
GO

DROP TABLE IF EXISTS Coaches;

CREATE TABLE Coaches (
    id INT CONSTRAINT PK_Coaches_id PRIMARY KEY IDENTITY(1, 1),
    [name] VARCHAR(45) NOT NULL,
    surname VARCHAR(45) NOT NULL,
    birthday DATE NOT NULL,
    country VARCHAR(45) NOT NULL
);

INSERT INTO Coaches ([name], surname, birthday, country)
VALUES 
('Мірча', 'Луческу', '1945-07-29', 'Румунія'),
('Роберто', 'Дзербі', '1979-06-06', 'Італія'),
('Остап', 'Маркевич', '1978-04-04', 'Україна'),
('Ігор', 'Леонов', '1967-09-14', 'Україна'),
('Юрій', 'Максимов', '1968-12-08', 'Україна'),
('Ігор', 'Йовичевич', '1973-11-30', 'Хорватія'),
('Сергій', 'Лавриненко', '1975-02-17', 'Україна'),
('Юрій', 'Мороз', '1970-08-08', 'Україна'),
('Віктор', 'Скрипник', '1969-11-19', 'Україна'),
('Юрій', 'Гура', '1976-08-08', 'Казахстан'),
('Олег', 'Дулуб', '1965-09-20', 'Білорусь'),
('Леонід', 'Кучук', '1959-08-27', 'Білорусь'),
('Олександр', 'Рябоконь', '1964-02-21', 'Україна'),
('Юрій', 'Вірт', '1974-05-04', 'Україна'),
('Сергій', 'Кузнецов', '1979-10-03', 'Білорусь'),
('Валерій', 'Кривенцов', '1973-07-30', 'Україна');

DROP TABLE IF EXISTS Owners;

CREATE TABLE Owners (
	id INT CONSTRAINT PK_Owners_id PRIMARY KEY IDENTITY(1, 1),
	[name] VARCHAR(45) NOT NULL,
	surname VARCHAR(45) NOT NULL,
	birthday DATE NOT NULL,
	country VARCHAR(45) NOT NULL
);

INSERT INTO Owners ([name], surname, birthday, country)
VALUES 
('Ігор', 'Суркіс', '1958-11-22', 'Україна'),
('Рінат', 'Ахметов', '1966-09-21', 'Україна'),
('Тарік', 'Чаудрі', '1978-04-04', 'Пакистан'),
('Валерій', 'Пересоляк', '1981-04-14', 'Україна'),
('Костянтин', 'Жеваго', '1974-01-07', 'Україна'),
('Максим', 'Береза', '1990-01-22', 'Україна'),
('Олександр', 'Поворознюк', '1971-03-06', 'Україна'),
('Леонід', 'Клімов', '1953-03-31', 'Україна'),
('Євгеній', 'Гєллєр', '1974-05-12', 'Україна'),
('Сергій', 'Кузьменко', '1975-01-22', 'Україна'),
('Богдан', 'Копитко', '1964-01-01', 'Україна'),
('Григорій', 'Козловський', '1971-02-01', 'Україна'),
('Володимир', 'Левін', '1970-06-01', 'Україна'),
('Іван', 'Надєїн', '1983-02-04', 'Україна'),
('Андрій', 'Засуха', '1986-10-30', 'Україна'),
('Ярослав', 'Вдовенко', '1973-08-18', 'Україна');

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