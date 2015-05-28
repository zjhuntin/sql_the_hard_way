CREATE TABLE person (
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	age INTEGER
);

CREATE TABLE pet (
	id INTEGER PRIMARY KEY,
	name TEXT,
	breed TEXT,
	age INTEGER,
	dead INTEGER
);

CREATE TABLE person_pet (
	person_id INTEGER,
	pet_id INTEGER
);
INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, "Zach", "Huntington-Meath", 27);

INSERT INTO pet (id, name, breed, age, dead)
	VALUES(0, "Odin", "Jack", 9, 1);

INSERT INTO pet VALUES (1, "Derp", "Herp", 2, 1);
