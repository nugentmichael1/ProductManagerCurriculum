CREATE TABLE actors (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
)

CREATE TABLE movies (
	id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	released DATE
)

CREATE TABLE actors_movies(
	actor_id INT REFERENCES actors(id) ON DELETE CASCADE,
	movie_id INT REFERENCES movies(id) ON DELETE CASCADE,
	PRIMARY KEY (actor_id, movie_id)
)

INSERT INTO actors (first_name, last_name) VALUES
	('Heath', 'Ledger'),
	('Christian', 'Bale'),
	('Jon', 'Bernthal'),
	('Billy Bob', 'Thornton'),
	('Matt', 'Damon'),
	('Adam', 'Driver')

INSERT INTO movies (title, released) VALUES
	('Titanic', '2025-12-19'),
	('Dark Knight, The', '2008-07-18'),
	('Knight''s Tale, A', '2011-05-11'), 
	('Jason Bourne', '2016-07-29'),
	('10 Things I Hate About You', '1999-03-31'),
	('Avengers, The', '2012-05-04'),
	('Ford v Ferrari', '2019-08-30'),
	('Tar', '2022-10-07')

SELECT * FROM actors;
SELECT * FROM movies;
SELECT * FROM actors_movies;

INSERT INTO actors_movies (actor_id, movie_id) VALUES
(1,2),
(1,3),
(1,5),
(2,2),
(2,7),
(3,7),
(5,4)

-- Left Join Example
SELECT 
	a.first_name as "First Name", 
	a.last_name as "Last Name",
	m.title as "Title",
	m.released as "Release Date"
FROM
	actors a
LEFT JOIN
	actors_movies am
ON 
	a.id=am.actor_id
LEFT JOIN
	movies m
ON 
	am.movie_id=m.id

-- Right Join Example
SELECT 
	a.first_name as "First Name", 
	a.last_name as "Last Name",
	m.title as "Title",
	m.released as "Release Date"
FROM
	actors a
RIGHT JOIN
	actors_movies am
ON 
	a.id=am.actor_id
RIGHT JOIN
	movies m
ON 
	am.movie_id=m.id