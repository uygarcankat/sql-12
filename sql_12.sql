

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
                             
                             
                             
       4) select first_name,last_name 
       from customer 
       where exists (select max(amount)
                             from payment
                             where customer.customer_id = payment.customer_id)
                             
