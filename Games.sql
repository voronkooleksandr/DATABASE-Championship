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
();
