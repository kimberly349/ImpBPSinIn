Loading console...    12,'2025/05/17 01:23','2025/07/02 03:33','vacaciones');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> values (12,'2025/05/17 01:23','2025/07/02 03:33','vacaciones')' at line 2
mysql> INSERT into detalle_horario (horario_id,hora_salida,hora_entrada,codigo_incapacidad)
    ->     -> values (25,'2025/09/23 12:56','2025/02/03 12:12','vacaciones');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> values (25,'2025/09/23 12:56','2025/02/03 12:12','vacaciones')' at line 2
mysql> INSERT into detalle_horario (horario_id,hora_salida,hora_entrada,codigo_incapacidad)
    -> values (25,'2025/09/23 12:56','2025/02/03 12:12','vacaciones');
ERROR 1062 (23000): Duplicate entry '25-2025-09-23' for key 'detalle_horario.PRIMARY'
mysql> SELECT * from detalle_horario;
+------------+-------------+--------------+--------------------+
| horario_id | hora_salida | hora_entrada | codigo_incapacidad |
+------------+-------------+--------------+--------------------+
|         12 | 2025-08-17  | 2025-06-12   | vacaciones         |
|         24 | 2025-01-21  | 2025-05-05   | vacaciones         |
|         25 | 2025-07-23  | 2025-08-18   | vacaciones         |
|         25 | 2025-09-23  | 2025-02-03   | vacaciones         |
+------------+-------------+--------------+--------------------+
4 rows in set (0.01 sec)

mysql> INSERT into detalle_horario (horario_id,hora_salida,hora_entrada,codigo_incapacidad)
    -> values (25,'2025/04/26 12:56','2025/04/03 12:12','vacaciones');
Query OK, 1 row affected, 4 warnings (0.01 sec)

mysql> CREATE TABLE usuarios (
    ->     idx int(20) NOT NULL
    ->     nombre varchar(100) NOT NULL
    ->     apellidos varchar(100) NOT NULL
    ->     departamento varchar(100) NOT NULL
    ->     PRIMARY KEY (nombre, apellido)
    -> ); 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'nombre varchar(100) NOT NULL
    apellidos varchar(100) NOT NULL
    departament' at line 3
mysql> CREATE TABLE usuarios (
    ->     idx int(20) NOT NULL,
    ->     nombre varchar(100) NOT NULL,
    ->     apellidos varchar(100) NOT NULL,
    ->     departamento varchar(100) NOT NULL,
    ->     PRIMARY KEY (nombre, apellido)
    -> );
ERROR 1072 (42000): Key column 'apellido' doesn't exist in table
mysql> CREATE TABLE usuarios (
    ->     idx int(20) NOT NULL,
    ->     nombre varchar(100) NOT NULL,
    ->     apellidos varchar(100) NOT NULL,
    ->     departamento varchar(100) NOT NULL,
    ->     PRIMARY KEY (nombre, apellidos)
    -> ); 
Query OK, 0 rows affected, 1 warning (0.07 sec)

mysql> show tables;
+---------------------------+
| Tables_in_owouu31$default |
+---------------------------+
| detalle_horario           |
| horario                   |
| plantilla_detalle_horario |
| usuarios                  |
+---------------------------+
4 rows in set (0.00 sec)

mysql> INSERT into usuarios (idx, nombre, apellidos, departamento) values ( 3, 'andres', 'velasquez', 'cbtis-246');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT into usuarios (idx, nombre, apellidos, departamento) values ( 2, 'jesus', 'dominguez', 'cbtis-246');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into usuarios (idx, nombre, apellidos, departamento) values ( 5, 'emma', 'sanchez', 'cbtis-246');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT into usuarios (idx, nombre, apellidos, departamento) values ( 5, 'pablo', 'paz', 'cbtis-246');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into usuarios (idx, nombre, apellidos, departamento) values ( 6, 'roberto', 'juarez', 'cbtis-246');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into usuarios (idx, nombre, apellidos, departamento) values ( 8, 'emiliano', 'perez', 'cbtis-246');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT into usuarios (idx, nombre, apellidos, departamento) values ( 15, 'diego', 'morales', 'cbtis-246');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into usuarios (idx, nombre, apellidos, departamento) values ( 10, 'ambar', 'jimenes', 'cbtis-246');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into usuarios (idx, nombre, apellidos, departamento) values ( 7, 'alexis', 'estrada', 'cbtis-246');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT into usuarios (idx, nombre, apellidos, departamento) values ( 67, 'alexis', 'estrada', 'cbtis-246');
ERROR 1062 (23000): Duplicate entry 'alexis-estrada' for key 'usuarios.PRIMARY'
mysql> INSERT into usuarios (idx, nombre, apellidos, departamento) values ( , 'alexis', 'estrada', 'cbtis-246');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ', 'alexis', 'estrada', 'cbtis-246')' at line 1
mysql> UPDATE usuarios set idx = 9 where nombre = 'pablo';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0
mysql> UPDATE usuarios set nombre = 'carlos' where idx = 67;
Query OK, 0 rows affected (0.01 sec)
Rows matched: 0  Changed: 0  Warnings: 0
mysql> SELECT * from usuarios;
+-----+----------+-----------+--------------+
| idx | nombre   | apellidos | departamento |
+-----+----------+-----------+--------------+
|   7 | alexis   | estrada   | cbtis-246    |
|  10 | ambar    | jimenes   | cbtis-246    |
|   3 | andres   | velasquez | cbtis-246    |
|  15 | diego    | morales   | cbtis-246    |
|   8 | emiliano | perez     | cbtis-246    |
|   5 | emma     | sanchez   | cbtis-246    |
|   2 | jesus    | dominguez | cbtis-246    |
|   9 | pablo    | paz       | cbtis-246    |
|   6 | roberto  | juarez    | cbtis-246    |
+-----+----------+-----------+--------------+
9 rows in set (0.00 sec)
mysql> INSERT into usuarios (idx, nombre, apellidos, departamento) values ( 56, 'omar', 'servantes', 'cbtis-246');
Query OK, 1 row affected (0.01 sec)
mysql> SELECT * from usuarios;
+-----+----------+-----------+--------------+
| idx | nombre   | apellidos | departamento |
+-----+----------+-----------+--------------+
|   7 | alexis   | estrada   | cbtis-246    |
|  10 | ambar    | jimenes   | cbtis-246    |
|   3 | andres   | velasquez | cbtis-246    |
|  15 | diego    | morales   | cbtis-246    |
|   8 | emiliano | perez     | cbtis-246    |
|   5 | emma     | sanchez   | cbtis-246    |
|   2 | jesus    | dominguez | cbtis-246    |
|  56 | omar     | servantes | cbtis-246    |
|   9 | pablo    | paz       | cbtis-246    |
|   6 | roberto  | juarez    | cbtis-246    |
+-----+----------+-----------+--------------+
10 rows in set (0.01 sec)
mysql> 
