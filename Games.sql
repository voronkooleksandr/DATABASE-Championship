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

(2,	0, 3,	0, '2021-08-11', 1,	4,	1),
(1,	1, 1,	1, '2021-07-23', 11,	3,	11),
(0,	0, 1,	1, '2021-07-24', 14, 15,	14),
(2,	1, 3,	0, '2021-07-24', 2,	7,	2),
(2,	1, 3,	0, '2021-07-25', 16,	12,	16),
(3,	0, 3,	0, '2021-07-25', 13,	8,	13),
(0,	1, 0,	3, '2021-07-25', 9,	10,	9),
(2,	2, 1,	1, '2021-07-26', 5, 6, 5),

(4,	0, 3,	0, '2021-08-01', 1,	14,	1),
(0,	3, 0,	3, '2021-07-30', 11,	2,	11),
(1,	0, 3,	0, '2021-07-30', 15, 16, 15),
(1,	0, 3,	0, '2021-07-31', 4, 10,	4),
(0,	3, 0,	3, '2021-07-31', 8,	6,	8),
(1,	2, 0,	3, '2021-08-01', 3,	13,	3),
(2,	0, 3,	0, '2021-08-01', 5,	12,	5),
(1,	5, 0,	3, '2021-08-02', 7, 9, 7),




