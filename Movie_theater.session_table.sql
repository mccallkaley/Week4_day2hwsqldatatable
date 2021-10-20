CREATE TABLE movies (
	movie_id SERIAL PRIMARY KEY,
	movie_title VARCHAR(150),
	movie_duration INTEGER
);

CREATE TABLE tickets (
	ticket_id SERIAL PRIMARY KEY,
	ticket_price NUMERIC(4,2),
    movie_id INTEGER,
	ticket_date DATE DEFAULT CURRENT_DATE,
	FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE concessions (
	concessions_id SERIAL PRIMARY KEY,
	concession_item VARCHAR(150),
	concession_price NUMERIC(4,2)
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(150)
);

