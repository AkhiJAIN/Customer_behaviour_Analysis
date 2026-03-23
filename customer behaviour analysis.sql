use master;


select * from shopping_data;


select TOP 10 * from shopping_data;

select  count(*) as total from shopping_data;

-- average age of the customer

select AVG(age) as Average_cutomer_Age from shopping_data;
-- given as 44

-- total purchaces by gender

SELECT Gender,
       SUM(purchase_amount
       ) AS total_purchase
FROM shopping_data
GROUP BY Gender;

-- total purchase by category
select 
    category,
    sum(purchase_amount) as total_purchase
from shopping_data 
group by category
order by total_purchase desc;


--top 5 purcahseing customer

select
TOP 5 customer_id,
sum(purchase_amount) as total
    from shopping_data
    group by customer_id
    order by total desc;