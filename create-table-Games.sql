USE Championship;
GO

CREATE TABLE Games (
  id INT IDENTITY,
  score_team_1 INT NOT NULL,
  score_team_2 INT NOT NULL,
  points_team_1 INT NOT NULL,
  points_team_2 INT NOT NULL,
  data_play DATE NOT NULL,
  CONSTRAINT PK_Games_id PRIMARY KEY (id)
);
