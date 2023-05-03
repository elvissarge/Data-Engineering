INSERT INTO dimStore(store_key,store_id,address,address2,district,city,country,postal_code,
					manager_first_name,manager_last_name,start_date,end_date)
SELECT s.store_id as store_key,
	s.store_id, a.address, a.address2, a.district, ci.city, co.country,a.postal_code,
	st.first_name as manager_first_name, st.last_name as manager_last_name, now() as start_date,
	now() as end_date

From store s
JOIN address a on (s.address_id = a.address_id)
JOIN city ci on (ci.city_id = a.city_id)
JOIN country co on (ci.country_id=co.country_id)
JOIN staff st on (st.store_id = s.store_id)

select * from dimStore;