select dimMovie.title, dimDate.month, dimCustomer.city, sum(sales_amount) as revenue
FROM factSales
JOIN dimMovie on dimMovie.movie_key=factSales.movie_key
JOIN dimdate on dimDate.date_key = factSales.date_key
JOIN dimCustomer on dimCustomer.customer_key=factSales.customer_key
JOIN dimStore on dimStore.store_key = factsales.store_key
GROUP BY (dimMovie.title, dimdate.month, dimCustomer.city)
ORDER BY dimMovie.title, dimDate.month, dimCustomer.city, revenue DESC;