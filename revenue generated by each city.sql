select t.city, sum(p.amount) as Revenue  from payment p
join customer c on p.customer_id=c.customer_id
join address a on a.address_id=c.customer_id
join city t on t.city_id=a.city_id
group by t.city
order by Revenue DESC;