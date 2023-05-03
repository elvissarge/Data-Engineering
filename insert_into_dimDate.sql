INSERT INTO dimDate (date_key,date,year,quarter, month,day,week,is_weekend)
SELECT 
	DISTINCT(TO_CHAR(payment_date :: DATE, 'yyyyMMDD')::integer) as date_key,
	date(payment_date) as date,
	EXTRACT(year from payment_date) as year,
	EXTRACT(quarter from payment_date) as quarter,
	EXTRACT(month from payment_date) as month,
	EXTRACT(day from payment_date) as day,
	EXTRACT(week from payment_date) as week,
	CASE WHEN EXTRACT(ISODOW FROM payment_date) IN (6,7) THEN true ELSE false END
from payment;

select * from dimDate;