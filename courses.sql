CREATE TABLE courses (code TEXT(40) NOT NULL CHECK(length(code) >= 7), description TEXT(400), START DATE NPT NULL, end DATE NOT NULL CHECK(end > start), PRIMARY KEY (code));

INSERT INTO courses (code, start, end, description) VALUES ('INFO330A', '2023-04-01', '2023-06-01', 'Data and databases'), ('INFO314', '2023-04-01', '2023-06-01', 'Networking and distributed Systems'), ('INFO448A', '2023-09-25', '2023-12-19', 'Introduction to iOS'), ('INFO449A', '2023-09-25', '2023-12-19', 'Introduction to Android'), ('BAW0100', '2023-04-01', '2023-06-01', 'Introduction to Basket-Weaving'), ('BAW100A', '2023-04-01', '2023-06-01', 'Underwater Basket-Weaving'); 

