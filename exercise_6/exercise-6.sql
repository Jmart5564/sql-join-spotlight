-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
SELECT title FROM film
INNER JOIN inventory ON inventory.film_id = film.film_id
INNER JOIN rental ON rental.inventory_id = inventory.inventory_id
LEFT JOIN customer ON rental.customer_id = customer.customer_id
WHERE customer.first_name = 'Roberta';

