CREATE TABLE personajes
(
 id serial PRIMARY KEY,
 name varchar(30) NOT NULL,
 status varchar(10),
 location integer REFERENCES locations(id)
)

CREATE TABLE locations
(
    id serial PRIMARY KEY,
    name varchar(30) NOT NULL UNIQUE
)

INSERT INTO locations(name)
VALUES ('Mars');

SELECT * FROM locations;

SELECT * FROM personajes;

INSERT INTO personajes (name,status,location)
VALUES('Rick Sanchez','Alive',1);

DELETE FROM locations WHERE id=5;

SELECT * FROM personajes
WHERE status='alive' OR location=3 
ORDER BY name DESC;

SELECT status, COUNT(id) FROM personajes GROUP BY status

SELECT p.name, p.status, l.name as planeta
FROM personajes as p 
JOIN locations as l ON p.location = l.id