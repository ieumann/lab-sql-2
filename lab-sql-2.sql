USE sakila;
# Select all the actors with the first name ‘Scarlett’.
SELECT * 
FROM actor
WHERE first_name LIKE 'Scarlett';
# Select all the actors with the last name ‘Johansson’.
SELECT * 
FROM actor
WHERE last_name LIKE 'Johansson';
# How many films (movies) are available for rent?
SELECT COUNT(DISTINCT inventory_id)
FROM inventory;
# How many films have been rented?
SELECT COUNT(DISTINCT rental_id)
FROM rental;
# What is the shortest and longest rental period?
# SELECT DISTINCT film.rental_duration
# FROM film;
SELECT MIN(rental_duration)
FROM film;
SELECT MAX(rental_duration)
FROM film;
# What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MIN(length) AS min_length, MAX(length) AS max_length
FROM film;
# What's the average movie duration?
SELECT AVG(length)
FROM film;
# What's the average movie duration expressed in format (hours, minutes)?
SELECT TIME_FORMAT(SEC_TO_TIME(CEIL(AVG(length)*60)), '%H:%i') AS avg_length
FROM film;
# How many movies longer than 3 hours?
SELECT COUNT(*) AS num_movies
FROM film
WHERE length > 180;
# Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(INITCAP(first_name), ' ', UPPER(last_name), '-', LOWER(email)) AS name_email
FROM customer;
# INITCAP does not exist...?? Don't know why.
# What's the length of the longest film title?
SELECT LENGTH(MAX(title)) AS max_title_length
FROM film;
#SELECT MAX(title)
#FROM film;
