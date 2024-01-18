select first_name,
       last_name,
       email,
       store_id
from staff ;

select 
     store_id,
     count(inventory_id) as inventory
 from inventory 
 group by store_id;
 
 select 
        store_id,
		count(case when active = 1 then store_id else null end) as active,
        count(case when active = 0 then store_id else null end) as innactive
 from customer
 group by store_id;
 
 select    
       count(email) as emails 
 from customer ;
 
 select 
       store_id , 
	   count(distinct film_id) as inventory  
 from inventory 
 group by Store_id ; 
 
 select
       count(distinct name ) as unuinqe 
 from category;
 
 select 
	  min(replacement_cost)as least,
      max(replacement_cost) as most,
      avg(replacement_cost) as ave
 from film ;
 
 select 
       avg(amount) as ave ,
       max(amount)as max 
 from payment ; 

 select 
       customer_id , 
       count(rental_id) as Rent 
 from rental 
 group by   
         customer_id 
 order by 
        Rent desc