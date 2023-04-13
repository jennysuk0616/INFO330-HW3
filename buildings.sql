CREATE TABLE buildings (name TEXT(80) NOT NULL, shortname TEXT(10) UNIQUE, id INTEGER PRIMARY KEY AUTOINCREMENT);

INSERT INTO buildings (name, shortname) VALUES ('Mary Gates Hall', 'MGH'), ('Johnson Hall', 'JHN'), ('Savery Hall', 'SAV');

CREATE TABLE rooms (number INTEGER, buildingid INTEGER, seating INTEGER, FOREIGN KEY (buildingid) REFERENCES buildings(id));

INSERT INTO rooms (number, buildingid, seating) VALUES (101, (SELECT id FROM buildings WHERE name = 'Mary Gates Hall'), 40), (202, (SELECT id FROM buildings WHERE shortname = 'JHN'), 30), (303, (SELECT id FROM buildings WHERE name = 'Savery Hall'), 20);


