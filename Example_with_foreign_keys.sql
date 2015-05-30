DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS car;

CREATE TABLE person (
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	age INTEGER,
	address TEXT,
	zipcode INTEGER
);

CREATE TABLE pet (
	id INTEGER PRIMARY KEY,
	name TEXT,
	age INTEGER,
	breed TEXT,
	dead TEXT,
	owner INTEGER,
	FOREIGN KEY(owner) REFERENCES person(id)
);

CREATE TABLE car (
	id INTEGER PRIMARY KEY,
	model TEXT,
	year INTEGER,
	condition TEXT,
	owner INTEGER,
	FOREIGN KEY(owner) REFERENCES person(id)
);

INSERT INTO person VALUES (0, "Zach", "Huntington-Meath", "27", "4306 Emerald Forest Dr.", 27713);
INSERT INTO person VALUES (1, "Daniel", "Newell", "26", "Southern Village", 27514);
INSERT INTO person VALUES (2, "Anna", "Engelke", "27", "4306 Emerald Forest Dr.", 27713);
INSERT INTO pet VALUES (0, "Max", "Shiba", 1, 0, 1);
INSERT INTO pet VALUES (1, "Odin", "Jack Russel", 9, 0, 0);
INSERT INTO pet VALUES (2, "Magorgax", "Robot Destroyer of Worlds", 2, 2, 2);
INSERT INTO car VALUES (0, "Scion XA", 2005, "Gently Used", 0);


SELECT person.first_name FROM person, pet
WHERE pet.owner = person.id AND pet.id = 2;

SELECT car.condition FROM person, car
WHERE person.id = 0 AND car.owner = person.id;

INSERT INTO car VALUES (1, "Toyota Camry", 2001, "Used", 2);

SELECT * FROM car;

DELETE FROM car WHERE car.owner = 0;

SELECT * FROM car;

ALTER TABLE person ADD COLUMN height INTEGER;

ALTER TABLE person ADD COLUMN weight INTEGER;

.schema person
