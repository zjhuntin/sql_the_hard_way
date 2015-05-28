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
	dead TEXT
);

CREATE TABLE car (
	id INTEGER PRIMARY KEY,
	model TEXT,
	year INTEGER,
	condition TEXT
);

CREATE TABLE pet_relation (
	id INTEGER PRIMARY KEY,
	owner_id INTEGER,
	pet_id INTEGER,
	FOREIGN KEY(owner_id) REFERENCES person(id),
	FOREIGN KEY(pet_id) REFERENCES pet(id)
);

CREATE TABLE car_relation (
	id INTEGER PRIMARY KEY,
	owner_id INTEGER,
	car_id INTEGER,
	FOREIGN KEY(owner_id) REFERENCES person(id),
	FOREIGN KEY(car_id) REFERENCES car(id)
);

INSERT INTO person VALUES (0, "Zach", "Huntington-Meath", "27", "4306 Emerald Forest Dr.", 27713);
INSERT INTO person VALUES (1, "Daniel", "Newell", "26", "Southern Village", 27514);
INSERT INTO pet VALUES (0, "Max", "Shiba", "1", 1);
INSERT INTO pet VALUES (1, "Odin", "Jack Russel", "9", 1);
INSERT INTO car VALUES (0, "Scion XA", 2005, "Gently Used");
INSERT INTO pet_relation VALUES (0, 0, 1);
INSERT INTO pet_relation VALUES (1, 1, 0);
INSERT INTO car_relation VALUES (0, 0, 0);
