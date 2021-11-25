USE Championship;
GO

DROP TABLE IF EXISTS Players;

CREATE TABLE Players (
	id INT CONSTRAINT PK_Players_id PRIMARY KEY IDENTITY (1, 1),
	[name] VARCHAR(45) NOT NULL,
	surname VARCHAR(45) NOT NULL,
	birthday DATE NOT NULL,
	country VARCHAR(45) NOT NULL,
	cost INT NOT NULL,
	id_position INT NOT NULL,
	id_team INT NOT NULL,
	CONSTRAINT FK_Players_id_position FOREIGN KEY (id_position) REFERENCES Positions (id) ON DELETE CASCADE,
	CONSTRAINT FK_Players_id_team FOREIGN KEY (id_team) REFERENCES Teams (id) ON DELETE CASCADE
);

INSERT INTO Players ([name], surname, birthday, country, cost, id_position, id_team)
VALUES
('Юрій', 'Паньків', '1984-11-03', 'Україна', 300000, 1, 12),
('Олександр', 'Бандура', '1985-05-30', 'Україна', 200000, 1, 12),
('Роман', 'Гагун', '1993-07-16', 'Україна', 300000, 2, 12),
('Мар"ян', 'Мисик', '1996-10-02', 'Україна', 400000, 2, 12),
('Максим', 'Білий', '1990-06-21', 'Україна', 400000, 2, 12),
('Фабрісіо', 'Альваренга', '1996-01-17', 'Аргентина', 300000, 2, 12),
('Мілош', 'Стаменковіч', '1990-06-01', 'Сербія', 300000, 2, 12),
('Валерій', 'Федорчук', '1988-10-05', 'Україна', 400000, 3, 12),
('Юрій', 'Климчук', '1997-05-05', 'Україна', 400000, 3, 12),
('Орест', 'Кузик', '1995-04-17', 'Україна', 300000, 3, 12),
('Остап', 'Притула', '2000-06-24', 'Україна', 200000, 3, 12),
('Таллес', 'Бренер Де Паула', '1998-05-12', 'Бразилія', 200000, 3, 12),
('Богдан', 'Бойчук', '1996-05-30', 'Україна', 400000, 3, 12),
('Данііл', 'Кондраков', '1998-01-19', 'Україна', 300000, 4, 12),
('Андрій', 'Борячук', '1996-04-23', 'Україна', 400000, 4, 12),

('Денис', 'Сидоренко', '1989-04-18', 'Україна', 200000, 1, 16),
('Максим', 'Коваленко', '2002-05-02', 'Україна', 50000, 1, 16),
('Євген', 'Ткачук', '1991-06-27', 'Україна', 300000, 2, 16),
('Іван', 'Коваленко', '1999-03-10', 'Україна', 50000, 2, 16),
('Віталій', 'Єрмаков', '1992-06-07', 'Україна', 400000, 2, 16),
('Соломон', 'Кверквелія', '1992-02-06', 'Грузія', 2500000, 2, 16),
('Амар', 'Квакіч', '2002-10-30', 'Боснія і Герцеговина', 200000, 2, 16),
('Юрій', 'Батюшин', '1992-12-07', 'Україна', 400000, 3, 16),
('Ростислав', 'Русин', '1995-10-26', 'Україна', 300000, 3, 16),
('Андрій', 'Ременюк', '1999-02-03', 'Україна', 100000, 3, 16),
('Євген', 'Протасов', '1997-07-23', 'Україна', 250000, 3, 16),
('Фабіньо', 'Фабіньо', '1996-07-07', 'Бразилія', 300000, 3, 16),
('Дерек Фрейтас', 'Рібейро', '1997-12-02', 'Бразилія', 200000, 3, 16),
('Віталій', 'Пономар', '1990-05-31', 'Україна', 300000, 4, 16),
('Ілля', 'Зубков', '1998-04-21', 'Україна', 75000, 4, 16),
('Марлісон', 'Марлісон', '1997-12-17', 'Бразилія', 200000, 4, 16),

('Георгій', 'Бущан', '1994-31-05', 'Україна', 7500000, 1, 1),
('Денис', 'Бойко', '1988-29-01', 'Україна', 1000000, 1, 1),
('Денис', 'Попов', '1999-02-17', 'Україна', 3500000, 2, 1),
('Віталій', 'Миколенко', '1999-05-29', 'Україна', 17000000, 2, 1),
('Ілля', 'Забарний', '2002-09-01', 'Україна', 1100000, 2, 1),
('Олександр', 'Сирота', '2000-06-11', 'Україна', 2000000, 2, 1),
('Томаш', 'Кендзьора', '1994-06-11', 'Польща', 5000000, 2, 1),
('Сергій', 'Сидорчук', '1991-02-05', 'Україна', 4000000, 3, 1),
('Беньямін', 'Вербич', '1993-27-11', 'Словенія', 5500000, 3, 1),
('Микола', 'Шапаренко', '1998-04-10', 'Україна', 8000000, 3, 1),
('Карлос', 'де Пена', '1992-11-03', 'Уругвай', 3500000, 3, 1),
('Віктор', 'Циганков', '1997-15-11', 'Україна', 25000000, 3, 1),
('Денис', 'Гармаш', '1990-19-04', 'Україна', 1500000, 3, 1),
('Олександр', 'Караваєв', '1992-02-06', 'Україна', 5000000, 3, 1),
('Вітіньйо', 'Вітіньйо', '1999-01-04', 'Бразилія', 5000000, 3, 1),
('Ерік', 'Рамірес', '1998-20-11', 'Венесуела', 2000000, 4, 1),
('Артем', 'Бєсєдін', '1996-31-03', 'Україна', 2000000, 4, 1),
('Владислав', 'Супряга', '2000-15-02', 'Україна', 6000000, 4, 1),

('Орест', 'Костик', '1997-04-16', 'Україна', 400000, 1, 11),
('Олександр', 'Ільющенков', '1999-11-22', 'Україна', 100000, 1, 11),
('Енес', 'Махмутович', '1997-01-26', 'Люксембург', 500000, 2, 11),
('Міхай', 'Лека', '1997-12-16', 'Румунія', 200000, 2, 11),
('Олексій', 'Зозуля', '1992-08-12', 'Україна', 25000000, 2, 11),
('Володимир', 'Якімець', '1990-11-02', 'Україна', 400000, 2, 11),
('Олексій', 'Довгий', '1987-03-22', 'Україна', 200000, 3, 11),
('Шина', 'Шина', '1988-11-09', 'Бразилія', 400000, 3, 11),
('Владислав', 'Хамелюк', '1990-11-02', 'Україна', 200000, 3, 11),
('Олександр', 'Романчук', '1999-05-22', 'Україна', 400000, 3, 11),
('Сергій', 'Політило', '1987-12-12', 'Україна', 400000, 3, 11),
('Альваро', 'Альваро', '1995-12-02', 'Бразилія', 500000, 4, 11),
('Фране', 'Чир"як', '2000-11-09', 'Хорватія', 500000, 3, 11),
('Артур', 'Ременяк', '1985-03-29', 'Україна', 300000, 4, 11),
('Ернест', 'Антві', '1998-01-02', 'Гана', 300000, 4, 11),

('Андрій', 'Пятов', '1984-06-28', 'Україна',1000000, 1, 2),
('Анатолій', 'Трубін', '2001-08-01', 'Україна', 8000000, 1, 2),
('Додо', 'Додо', '1998-11-17', 'Бразилія', 20000000, 2, 2),
('Вітао', 'Вітао', '2000-02-02', 'Бразилія', 3000000, 2, 2),
('Сергій', 'Кривцов', '1991-03-15', 'Україна', 4000000, 2, 2),
('Марлон', 'Марлон', '1995-09-07', 'Бразилія', 10000000, 2, 2),
('Микола', 'Матвієнко', '1996-05-02', 'Україна',11000000, 2, 2),
('Тарас', 'Степаненко', '1989-08-08', 'Україна', 75000000, 3, 2),
('Маркос', 'Антоніо', '2000-06-13', 'Бразилія', 8000000, 3, 2),
('Алан', 'Патрік', '1991-05-13', 'Бразилія', 8000000, 3, 2),
('Тете', 'Тете', '2000-02-15', 'Бразилія', 20000000, 3, 2),
('Манор', 'Соломон', '1999-07-24', 'Ізраїль', 20000000, 3, 2),
('Євген', 'Коноплянка', '1989-09-29', 'Україна', 2000000, 3, 2),
('Педріньйо', 'Педріньйо', '1998-04-13', 'Бразилія', 17000000, 3, 2),
('Жуніор', 'Мораес', '1987-04-04', 'Україна', 2000000, 4, 2),
('Лассіна', 'Траоре', '2001-01-12', 'Буркіна-Фасо', 9000000, 4, 2),


('Юрій', 'Паньків', '1984-11-03', 'Україна', 300000, 1, 12),
('Олександр', 'Бандура', '1985-05-30', 'Україна', 200000, 1, 12),

('Роман', 'Гагун', '1993-07-16', 'Україна', 300000, 2, 12),
('Мар"ян', 'Мисик', '1996-10-02', 'Україна', 400000, 2, 12),
('Максим', 'Білий', '1990-06-21', 'Україна', 400000, 2, 12),
('Фабрісіо', 'Альваренга', '1996-01-17', 'Аргентина', 300000, 2, 12),
('Мілош', 'Стаменковіч', '1990-06-01', 'Сербія', 300000, 2, 12),

('Валерій', 'Федорчук', '1988-10-05', 'Україна', 400000, 3, 12),
('Юрій', 'Климчук', '1997-05-05', 'Україна', 400000, 3, 12),
('Орест', 'Кузик', '1995-04-17', 'Україна', 300000, 3, 12),
('Остап', 'Притула', '2000-06-24', 'Україна', 200000, 3, 12),
('Таллес', 'Бренер Де Паула', '1998-05-12', 'Бразилія', 200000, 3, 12),
('Богдан', 'Бойчук', '1996-05-30', 'Україна', 400000, 3, 12),

('Данііл', 'Кондраков', '1998-01-19', 'Україна', 300000, 4, 12),
('Андрій', 'Борячук', '1996-04-23', 'Україна', 400000, 4, 12),













