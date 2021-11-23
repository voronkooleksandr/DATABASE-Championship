USE Championship;
GO

CREATE TABLE Games (
  id INT IDENTITY(1, 1)
  CONSTRAINT PK_Games_id PRIMARY KEY (id),
  id_team_1 INT NOT NULL
  CONSTRAINT UQ_Games_id_team_1 
  UNIQUE,
  CONSTRAINT FK_Games_id_team_1
  FOREIGN KEY (id_team_1)
  REFERENCES Teams (id),
  id_team_2 INT NOT NULL
  CONSTRAINT UQ_Games_id_team_2 
  UNIQUE,
  CONSTRAINT FK_Games_id_team_2
  FOREIGN KEY (id_team_2)
  REFERENCES Teams (id),
  score_team_1 INT NOT NULL,
  score_team_2 INT NOT NULL,
  points_team_1 INT NOT NULL,
  points_team_2 INT NOT NULL,
  data_play DATE NOT NULL
);

INSERT INTO Games (id_team_1, id_team_2, score_team_1, score_team_2, points_team_1, points_team_2, data_play)
VALUES
()
