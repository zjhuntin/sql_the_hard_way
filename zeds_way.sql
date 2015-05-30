DROP TABLE IF EXISITS person;
DROP TABLE IF EXISITS pet;
DROP TABLE IF EXISITS person_pet;

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
  FOREIGN KEY(person_id) REFERENCES person(id)
  FOREIGN KEY(pet_id) REFERENCES pet(id)
);

-- INSERT INTO person VALUES(0, "Zed", "Shaw", 37);
-- INSERT INTO pet VALUES(0, "Fluffy", "Unicorn", 1000, 0);
-- INSERT INTO pet VALUES(1, "Gigantor", "Robot", 1, 1);
-- INSERT INTO person_pet VALUES(0, 0);
-- INSERT INTO person_pet VALUES(0, 1);
--
-- SELECT * FROM person;
--
-- SELECT name, age FROM pet;
--
-- SELECT name, age FROM pet WHERE dead = 0;
--
-- SELECT * FROM person WHERE first_name = "Zed";
--
-- UPDATE person SET first_name = "Hilarious Guy"
--   WHERE first_name = "Zed";
--
-- UPDATE pet SET name = "Fancy Pants"
--   WHERE id=0;
--
-- SELECT * FROM person;
--
-- UPDATE person SET first_name = "Zed"
--   WHERE person.id = 0;
--
-- SELECT * FROM person;
--
-- UPDATE pet SET name = "Deceased"
--   WHERE pet.dead = 1;
--
-- SELECT * FROM pet;
--
-- SELECT * FROM pet;
--
-- UPDATE pet SET name = "Zed's Pet" WHERE id IN (
--   SELECT pet.id
--   FROM pet, person_pet, person
--   WHERE
--   person.id = person_pet.person_id AND
--   pet.id = person_pet.pet_id AND
--   pet.dead = 0 AND
--   person.first_name = "Zed"
-- );
--
-- UPDATE pet SET name = "Zed's Dead Pet" WHERE id IN (
--   SELECT pet.id
--   FROM pet, person_pet, person
--   WHERE
--   person.id = person_pet.person_id AND
--   pet.id = person_pet.pet_id AND
--   person.first_name = "Zed" AND
--   pet.dead = 1
-- );
--
-- SELECT * FROM pet;
--
--
-- -- INSERT INTO person VALUES(0, "Frank", "Smith", 100);
--
-- INSERT OR REPLACE INTO person (id, first_name, last_name, age)
--   VALUES(0, "Frank", "Smith", 100);
--
-- SELECT * FROM person;
--
-- REPLACE INTO person (id, first_name, last_name, age)
--   VALUES(0, "Zed", "Shaw", 37);
--
-- SELECT * FROM person;

ALTER TABLE person ADD COLUMN dead INTEGER;

ALTER TABLE person ADD COLUMN phone_number TEXT;

ALTER TABLE person ADD COLUMN salary INTEGER;

ALTER TABLE person, pet ADD COLUMN dob DATETIME;

ALTER TABLE person_pet, ADD COLUMN purchased_on DATETIME;

ALTER TABLE
