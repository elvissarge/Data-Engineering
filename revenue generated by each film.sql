select f.title, sum(p.amount) as revenue  from payment p
join rental r on p.rental_id=r.rental_id
join inventory i on r.inventory_id=i.inventory_id
join film f on f.film_id=i.film_id
group by f.title
order by revenue DESC;
