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

-- SELECT pet.id, pet.name, pet.age, pet.breed, pet.dead
--   FROM pet, pet_relation, person
--   WHERE
--   pet_relation.ower_id = person.id AND
--   person.id = 0
