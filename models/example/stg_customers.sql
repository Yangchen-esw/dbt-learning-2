with stg_customers as 
(SELECT customer_id, CONCAT(first_name,' ', last_name) as name , email, phone, country, signup_date FROM `iconic-post-500208-i7.raw.customers` )
select * from stg_customers