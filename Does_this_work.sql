CREATE TABLE person (
	id SMALLINT PRIMARY KEY,
	name VARCHAR(255),
	address CLOB,
	note BLOB,
	GPA DOUBLE,
	dead BOOLEAN
);


INSERT INTO person VALUES (0, "Harold", "201 Privet Dr.", 2, 3.42, 0);
INSERT INTO person VALUES (1, "Shelly", "504 Wingkingdom ln", "Banana", 2.5, 1);
