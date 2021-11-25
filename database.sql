-- Створення БД та усіх зв*язаних таблиць одним файлом і їх запуск одночасно.

CREATE DATABASE Championship;
GO

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


DROP TABLE IF EXISTS Owners;

CREATE TABLE Owners (
	id INT CONSTRAINT PK_Owners_id PRIMARY KEY IDENTITY(1, 1),
	[name] VARCHAR(45) NOT NULL,
	surname VARCHAR(45) NOT NULL,
	birthday DATE NOT NULL,
	country VARCHAR(45) NOT NULL
);

DROP TABLE IF EXISTS Positions;

CREATE TABLE Positions (
	id INT CONSTRAINT PK_Positions_id PRIMARY KEY IDENTITY(1, 1),
	[name] VARCHAR(45) NOT NULL
);


DROP TABLE IF EXISTS Stadiums;

CREATE TABLE Stadiums (
	id INT CONSTRAINT PK_Stadiums_id PRIMARY KEY IDENTITY(1, 1),
	[name] VARCHAR(100) NOT NULL,
        city VARCHAR(45) NOT NULL,
        capacity INT NOT NULL
);

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

DROP TABLE IF EXISTS Games;

CREATE TABLE Games (
  id INT CONSTRAINT PK_Games_id PRIMARY KEY IDENTITY(1, 1),
  id_team_1 INT NOT NULL,
  id_team_2 INT NOT NULL,
  score_team_1 INT NOT NULL,
  score_team_2 INT NOT NULL,
  points_team_1 INT NOT NULL,
  points_team_2 INT NOT NULL,
  data_play DATE NOT NULL,
  CONSTRAINT FK_Games_id_team_1 FOREIGN KEY (id_team_1) REFERENCES Teams (id),
  CONSTRAINT FK_Games_id_team_2 FOREIGN KEY (id_team_2) REFERENCES Teams (id),
  CONSTRAINT UQ_Games_id_team_1 UNIQUE (id_team_1),
  CONSTRAINT UQ_Games_id_team_2 UNIQUE (id_team_2)
  );

-- Вставлення даних до усіх таблиць і їх запуск одночасно
