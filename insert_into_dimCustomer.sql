insert into dimCustomer (customer_key,customer_id,first_name,last_name,email,address,address2,district,
						city,country,postal_code,create_date,start_date,end_date)
SELECT c.customer_id as customer_key,
	c.customer_id,
	c.first_name,
	c.last_name,
	c.email, a.address,
	a.address2, a.district,
	ci.city,
	co.country, postal_code,
	c.create_date,
	now() as start_date,
	now() as end_date
	
FROM customer c
JOIN address a on (c.address_id = a.address_id)
JOIN city ci on (a.city_id = ci.city_id)
JOIN country co on (ci.country_id=co.country_id);