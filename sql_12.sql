

1) select count(title)

from film 

where title in (
                 select title  
                  from film
                  where film.length > (select avg(film.length) from film)


            
            
        
  2)select count(title)
       from film
       where rental_rate in (select max(rental_rate) from film)
       
       
       
        3)select title
        from film 
        where rental_rate in (select min(rental_rate) from film
                             
                             where replacement_cost in (select min(replacement_cost) from film))
                             
                             
                             
       4) select  customer.customer_id, concat(first_name, ' ' ,last_name) as customers , count(payment_id) as count_payment_id from payment
left join customer on payment.customer_id = customer.customer_id
group by customer.customer_id
order by count (payment_id) desc;



