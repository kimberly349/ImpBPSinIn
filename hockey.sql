    ->     id int (16) NOT NULL,
    ->     name varchar(100) NOT NULL,
    ->     logo varchar(100),
    ->     PRIMARY KEY (id)
    -> );
ERROR 1050 (42S01): Table 'HockeyTeam' already exists
mysql> CREATE TABLE HockeyTeamPlayer(
    ->     id int (16) NOT NULL,
    ->     hockeyTeamId int (13) NOT NULL,
    ->     firstName varchar(25) NOT NULL,
    ->     lastName varchar(25) NOT NULL,
    ->     jerseyNum int (13),
    ->     position varchar(30),
    ->     PRIMARY KEY (id)
    -> );
ERROR 1050 (42S01): Table 'HockeyTeamPlayer' already exists
mysql> CREATE TABLE UserInfo(
    ->     id int (16) NOT NULL,
    ->     firstName varchar(25) NOT NULL,
    ->     lastName varchar(25) NOT NULL,
    ->     email varchar(25) NOT NULL,
    ->     round1Points int (13),
    ->     round2Points int (13),
    ->     round3Points int (13),
    ->     round4Points int (13),
    ->     PRIMARY KEY (id)
    -> );
Query OK, 0 rows affected, 5 warnings (0.03 sec)
mysql> show tables;
+----------------------------------+
| Tables_in_Basededatos709$default |
+----------------------------------+
| GameScores                       |
| HockeyGame                       |
| HockeyTeam                       |
| HockeyTeamPlayer                 |
| RoundStats                       |
| User                             |
| UserInfo                         |
| UserScorePicks                   |
| UserStatsPicks                   |
| detalle_horario                  |
| horario                          |
| plantilla_detalle_horario        |
| playoffround                     |
| usuarios                         |
+----------------------------------+
14 rows in set (0.00 sec)
mysql> 
