DROP TABLE person;
DROP TABLE pet;
DROP TABLE car;
DROP TABLE pet_relation;
DROP TABLE car_relation;

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
INSERT INTO person VALUES (2, "Anna", "Engelke", "27", "4306 Emerald Forest Dr.", 27713);
INSERT INTO pet VALUES (0, "Max", "Shiba", 1, 0);
INSERT INTO pet VALUES (1, "Odin", "Jack Russel", 9, 0);
INSERT INTO car VALUES (0, "Scion XA", 2005, "Gently Used");
INSERT INTO pet VALUES (2, "Magorgax", "Robot Destroyer of Worlds", 2, 1);
INSERT INTO pet_relation VALUES (0, 0, 1);
INSERT INTO pet_relation VALUES (1, 1, 0);
INSERT INTO car_relation VALUES (0, 0, 0);
INSERT INTO pet_relation VALUES (2, 2, 0);


SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 1;

SELECT * FROM person WHERE first_name != "Zach";

SELECT pet.id, pet.name, pet.age, pet.breed, pet.dead
  from pet, pet_relation, person
  WHERE
  pet.id = pet_relation.pet_id AND
  pet_relation.owner_id = person.id AND
  person.first_name = "Zach";

SELECT pet.id, pet.name, pet.age, pet.breed, pet.dead
  FROM pet, pet_relation, person
  WHERE
  pet_relation.owner_id = person.id AND
  person.id = 1 AND pet.id = pet_relation.pet_id;

SELECT pet.id, pet.name, pet.age, pet.breed, pet.dead
  FROM pet, pet_relation, person
  WHERE
  pet_relation.ower_id = person.id AND
  person.id = 0


SELECT name, age FROM pet WHERE dead = 1;

DELETE FROM pet WHERE dead = 1;

SELECT * FROM pet;

INSERT INTO pet VALUES (2, "Gigantor", "Robot Destroyer of Worlds", 1,
0);

SELECT * FROM pet;
