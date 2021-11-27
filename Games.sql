USE Championship;
GO

DROP TABLE IF EXISTS Games;

CREATE TABLE Games (
  id INT CONSTRAINT PK_Games_id PRIMARY KEY IDENTITY(1, 1),
  score_team_1 INT NOT NULL,
  score_team_2 INT NOT NULL,
  points_team_1 INT NOT NULL,
  points_team_2 INT NOT NULL,
  data_play DATE NOT NULL,
  id_team_1 INT NOT NULL,
  id_team_2 INT NOT NULL,
  id_stadium INT NOT NULL,
  CONSTRAINT FK_Games_id_team_1 FOREIGN KEY (id_team_1) REFERENCES Teams (id),
  CONSTRAINT FK_Games_id_team_2 FOREIGN KEY (id_team_2) REFERENCES Teams (id),
  CONSTRAINT FK_Games_id_stadium FOREIGN KEY (id_stadium) REFERENCES Stadiums (id),
  CONSTRAINT UQ_Games_id_team_1 UNIQUE (id_team_1),
  CONSTRAINT UQ_Games_id_team_2 UNIQUE (id_team_2),
  CONSTRAINT CK_Games_id_stadium CHECK (id_stadium = Games.id_team_1 )
  );

INSERT INTO Games (id_team_1, id_team_2, score_team_1, score_team_2, points_team_1, points_team_2, data_play)
VALUES
-- 1 тур
(2,	0, 3,	0, '2021-08-11', 1,	4,	1),
(1,	1, 1,	1, '2021-07-23', 11,	3,	11),
(0,	0, 1,	1, '2021-07-24', 14, 15,	14),
(2,	1, 3,	0, '2021-07-24', 2,	7,	2),
(2,	1, 3,	0, '2021-07-25', 16,	12,	16),
(3,	0, 3,	0, '2021-07-25', 13,	8,	13),
(0,	1, 0,	3, '2021-07-25', 9,	10,	9),
(2,	2, 1,	1, '2021-07-26', 5, 6, 5),
-- 2 тур
(4,	0, 3,	0, '2021-08-01', 1,	14,	1),
(0,	3, 0,	3, '2021-07-30', 11,	2,	11),
(1,	0, 3,	0, '2021-07-30', 15, 16, 15),
(1,	0, 3,	0, '2021-07-31', 4, 10,	4),
(0,	3, 0,	3, '2021-07-31', 8,	6,	8),
(1,	2, 0,	3, '2021-08-01', 3,	13,	3),
(2,	0, 3,	0, '2021-08-01', 5,	12,	5),
(1,	5, 0,	3, '2021-08-02', 7, 9, 7),
--3 тур
(1,	2, 0,	3, '2021-08-08', 9, 1, 9),
(3,	2, 3,	0, '2021-08-06', 16, 8, 16),
(2,	1, 3,	0, '2021-08-07', 12, 14, 12),
(2,	1, 3,	0, '2021-08-07', 6, 3, 6),
(1,	2, 0,	3, '2021-08-07', 2, 10, 2),
(4,	1, 3,	0, '2021-08-08', 5, 11, 5),
(2,	0, 3,	0, '2021-08-09', 13, 7, 13),
(1,	1, 1,	1, '2021-11-24', 4, 15, 4),
--4 тур
(1, 1, 1,	1, '2021-08-18', 7, 1, 7),
(2, 0, 3,	0, '2021-08-13', 2, 16, 2),
(1, 1, 1,	1, '2021-08-11', 14, 5, 14),
(2, 1, 3,	0, '2021-08-14', 13, 6, 13),
(1, 1, 1,	1, '2021-08-14', 9, 4, 9),
(1, 1, 1,	1, '2021-08-15', 15, 12, 15),
(1, 1, 1,	1, '2021-08-15', 11, 10, 11),
(2, 3, 0,	3, '2021-08-16', 3, 8, 3),
--5 тур
(4, 0, 3, 0, '2021-08-22', 1, 13, 1),
(2, 0, 3, 0, '2021-08-20', 5, 16, 5),
(1, 0, 3, 0, '2021-08-21', 14, 4, 14),
(2, 0, 3, 0, '2021-08-21', 6, 12, 6),
(0, 3, 0, 3, '2021-08-21', 8, 2, 8),
(3, 4, 0, 3, '2021-08-22', 3, 9, 3),
(0, 1, 0, 3, '2021-08-22', 15, 10, 15),
(1, 2, 0, 3, '2021-08-23', 11, 7, 11),
--6 тур
(7, 0, 3, 0, '2021-08-28', 1, 15, 1),
(2, 2, 1, 1, '2021-08-27', 8, 10, 8),
(3, 0, 3, 0, '2021-08-28', 7, 3, 7),
(1, 2, 0, 3, '2021-08-28', 16, 6, 16),
(0, 4, 0, 3, '2021-08-29', 13, 14, 13),
(1, 1, 1, 1, '2021-08-29', 4, 2, 4),
(1, 0, 3, 0, '2021-08-29', 12, 11, 12),
(1, 0, 3, 0, '2021-08-29', 9, 5, 9),
-- 7 тур
(0, 2, 0, 3, '2021-09-11', 16, 1, 16),
(1, 1, 1, 1, '2021-09-11', 12, 9, 12),
(1, 0, 3, 0, '2021-09-10', 10, 7, 10),
(2, 0, 3, 0, '2021-09-11', 2, 6, 2),
(2, 2, 1, 1, '2021-09-12', 4, 8, 4),
(1, 3, 0, 3, '2021-09-12', 15, 3, 15),
(2, 2, 1, 1, '2021-09-12', 5, 13, 5),
(1, 0, 3, 1, '2021-09-13', 14, 11, 14),
-- 8 тур


