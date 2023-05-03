insert into dimMovie(movie_key,film_id,title,description,release_year,language,original_language,
					rental_duration,length,rating,special_features)
SELECT 
	f.film_id as movie_key,
	f.film_id, f.title, f.description, f.release_year, f.language_id,
	l.name, f.rental_duration, f.length,
	f.rating, f.special_features
FROM film f
JOIN language l on (f.language_id=l.language_id);

select * from dimMovie;