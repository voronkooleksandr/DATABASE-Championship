USE Championship;
GO

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
