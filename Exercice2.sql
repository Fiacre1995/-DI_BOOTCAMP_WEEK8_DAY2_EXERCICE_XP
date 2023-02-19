-- Database: dvdrental

-- DROP DATABASE IF EXISTS dvdrental;

CREATE DATABASE dvdrental
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	SELECT * FROM customer
	
	SELECT first_name || ' ' || last_name AS fullname FROM customer
	
	SELECT DISTINCT create_date FROM customer
	
	SELECT * FROM customer ORDER BY first_name DESC
	
	
	SELECT * FROM film
	SELECT * FROM address
	SELECT * FROM film ORDER BY rental_rate 
	
	SELECT * FROM customer M INNER JOIN address N ON M.address_id = N.address_id WHERE district = 'Texas'
	
	SELECT * FROM film WHERE film_id IN (150, 15)
	
	SELECT film_id, title, description, rental_duration, rental_rate  FROM film WHERE title = 'Alien Center'
	
	SELECT film_id, title, description, rental_duration, rental_rate  FROM film WHERE title LIKE 'Al%'
	
	SELECT * FROM film ORDER BY rental_rate LIMIT 10
	
	SELECT first_name, last_name, amount, payment_date  FROM customer M INNER JOIN payment N ON M.customer_id = N.customer_id
	
	SELECT * FROM inventory M INNER JOIN film N ON M.film_id = N.film_id