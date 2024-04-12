# Create mealdeals database
CREATE DATABASE IF NOT EXISTS mealdeals
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

# ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_hungarian_ci;

USE mealdeals;

# Create the users table
CREATE TABLE IF NOT EXISTS users (
  user_id INT AUTO_INCREMENT NOT NULL,
  lastname VARCHAR(20),
  firstname VARCHAR(20),
  middlename VARCHAR(20),
  username VARCHAR(20),
  email VARCHAR(50),
  phone VARCHAR(20),
  address VARCHAR(80),
  pass VARCHAR(20),
  PRIMARY KEY (user_id)
);

#
CREATE TABLE IF NOT EXISTS first (first_id INT NOT NULL AUTO_INCREMENT, 
				  firstname VARCHAR(20),
				  PRIMARY KEY (first_id));

# Insert the first table
INSERT INTO first (firstname) VALUES ('Atala'), ('Julianna'), ('Magdolna'), ('Mária'), ('Erzsébet'),
				     ('Márta'), ('Ilona'), ('Zsuzsa'), ('Zsófia'), ('Mónika'),
				     ('Éva'), ('Marianna'), ('Tamara'), ('Piroska'), ('Helga'),
				     ('Attila'), ('János'), ('Mátyás'), ('József'), ('Lajos'),
				     ('Sándor'), ('Árpád'), ('Géza'), ('Kolos'), ('Ernő'),
				     ('Antal'), ('Vilmos'), ('Zoltán'), ('Zalán'), ('Tibor');

#
CREATE TABLE IF NOT EXISTS middle (middle_id INT NOT NULL AUTO_INCREMENT, 
				   middlename VARCHAR(20),
				   PRIMARY KEY (middle_id));

# Insert the middle table
INSERT INTO middle (middlename) VALUES ('Atala'), (''), ('Magdolna'), (''), (''),
				     ('Márta'), (''), ('Zsuzsa'), (''), ('Mónika'),
				     ('Éva'), (''), ('Tamara'), (''), (''),
				     ('Attila'), (''), ('Mátyás'), (''), (''),
				     ('Sándor'), (''), ('Géza'), (''), ('Ernő'),
				     ('Antal'), (''), ('Zoltán'), (''), ('');

#
CREATE TABLE IF NOT EXISTS last (lastname VARCHAR(20));

# Insert the last table
INSERT INTO last (lastname) VALUES ('Aranyosi'), ('Papp'), ('Budai'), ('Máriássy'), ('Erdősi'),
				     ('Kiss'), ('Nagy'), ('Zsombér'), ('Balatoni'), ('Magyar'),
				     ('Horváth'), ('Németh'), ('Teleki'), ('Palotai'), ('Hegyi'),
				     ('Zalai'), ('Pesti'), ('Mogyorósi'), ('Kovács'), ('Szűcs'),
				     ('Kenéz'), ('Szalai'), ('Péter'), ('Gyulai'), ('Lápi'),
				     ('Sári'), ('Harmati'), ('Gyarmati'), ('Komáromi'), ('Rózsa'),
				     ('Fekete'), ('Fehér'), ('Zöld'), ('Harcsa'), ('Tatai');

#
CREATE TABLE IF NOT EXISTS city (cityname VARCHAR(20));

# Insert the city table
INSERT INTO city (cityname) VALUES ('Miskolc'), ('Üllő'), ('Zalacsány'), ('Zalabér'), ('Nyúl'),
				    ('Tata'), ('Tét'), ('Tát'), ('Vityapuszta'), ('Héreg'),
				    ('Tarján'), ('Jánoshalma'), ('Gyula'), ('Baj'), ('Baja'),
				    ('Bajna'), ('Ököritófülpös'), ('Siófok'), ('Cece'), ('Pápa'),
				    ('Ajka'), ('Szeged'), ('Gézaháza'), ('Alsómocsolád'), ('Kocs'),
				    ('Mocsa'), ('Gönyü'), ('Veszprém'), ('Zánka'), ('Debrecen');

#
CREATE TABLE IF NOT EXISTS streets (street VARCHAR(20));

# Insert the streets table
INSERT INTO streets (street) VALUES ('Fő'), ('Madár'), ('Rét'), ('Zalánka'), ('Erdei'),
				   ('Jegenye'), ('Rózsa'), ('Gesztenye'), ('Virágos'), ('Gólya'),
				   ('Szomszéd'), ('Molnár'), ('Kovács'), ('Szekeres'), ('Kerekes'),
				   ('Kórház'), ('Fürdő'), ('Templom'), ('Malom'), ('Iskola'),
				   ('Róka'), ('Szegfű'), ('Gyár'), ('Kifli'), ('Kocka'),
				   ('Halász'), ('Szép'), ('Múzeum'), ('Bánya'), ('Sonka');

CREATE TABLE IF NOT EXISTS st (st_name VARCHAR(10));

#
INSERT INTO st (st_name) VALUES 
            ('út'), ('utca'), ('tér'), ('köz'), ('dűlő');

