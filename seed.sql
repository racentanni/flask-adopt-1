DROP DATABASE IF IF EXISTS  adopt;

CREATE DATABASE adopt

\c adopt

CREATE TABLE pets
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    species TEXT NOT NULL,  
    photo_url TEXT,
    age INT,
    notes TEXT
    available BOOLEAN NOT NULL DEFAULT TRUE
);

INSERT INTO pets
(name, species, photo_url, age, notes, available)
VALUES
('Spots McKenzie', 'dog', 'https://www.southernliving.com/thmb/M1s7wiaoRr4eGHejP2eRQ6PzTMI=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/gettyimages-1067057992-1-95f3c3354cf448e8b746d350e91ff819.jpg','4', null,'t'),
('Spike', 'porcupine', 'https://animals.sandiegozoo.org/sites/default/files/2016-09/animals_hero_porcupine.jpg', '2', NULL, 't'),
('Blofeld', 'cat', 'https://i2-prod.mirror.co.uk/incoming/article6707899.ece/ALTERNATES/s1200d/PAY-Phoebe.jpg', '6', NULL, 't');