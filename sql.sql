create database E_Commerce ;

# 1. Weekday Vs Weekend (order_purchase_timestamp) Payment Statistics

select
case when
dayofweek(order_purchase_timestamp) in (1,7) 
then 'weekend' else 'weekday' 
end as day_type ,
count(distinct(od.order_id)) as Total_orders,
round(sum(payment_value),2) as Total_Payment_Amount,
round(avg(payment_value),2) as Average_Payment_Amount
from 
olist_orders_dataset as od 
join olist_order_payments_dataset as op on od.order_id = op.order_id
group by day_type ;

# 2. Number of Orders with review score 5 and payment type as credit card.

select 
count(pd.order_id) as Number_Of_Order
from olist_order_payments_dataset as pd
join olist_order_reviews_dataset as ord
on pd.order_id = ord.order_id
where pd.payment_type = 'credit_card' and ord.review_score = 5;

# 3. Average number of days taken for order_delivered_customer_date for pet_shop

select prod.product_category_name,
avg(datediff(ord.order_delivered_customer_date,ord.order_purchase_timestamp)) as avg_delivery_days
from olist_orders_dataset ord
join
(select product_id, order_id, product_category_name
from olist_products_dataset
join olist_order_items_dataset using (product_id)) as prod
on ord.order_id = prod.order_id
where prod.product_category_name = 'Pet_shop'
group by prod.product_category_name;


/*
select avg(date(od.order_delivered_customer_date) - date(od.order_approved_at)) as Avg_days_to_delivered
from olist_order_items_dataset as oid
join olist_orders_dataset as od on oid.order_id = od.order_id
join olist_products_dataset as pd on oid.product_id = pd.product_id
where product_category_name = 'pet_shop' and od.order_status = 'delivered';
*/

# 4. Average price and payment values from customers of sao paulo city

select
customer_city,
round(avg(payment_value),2) as avg_Payment_value,
round((payment_value),2) as Total_Payment_value
from 
olist_orders_dataset as od join olist_order_payments_dataset as pd on od.order_id = pd.order_id
join olist_customers_dataset as cd on od.customer_id = cd.customer_id where customer_city = 'sao paulo' group by customer_city;

# 5. Relationship between shipping days (order_delivered_customer_date - order_purchase_timestamp) Vs review scores.

select
case 
when (date(order_delivered_customer_date) - date(order_purchase_timestamp)) >60 then 'super_Late'
when (date(order_delivered_customer_date) - date(order_purchase_timestamp)) >30 then 'Late'
when (date(order_delivered_customer_date) - date(order_purchase_timestamp)) >15 then 'Delay_in_Delivery'
else 'Delivered_In_Tat' end as Delivery_Status,
avg(review_score)
from olist_orders_dataset as od 
join olist_order_reviews_dataset as rd on od.order_id = rd.order_id
group by Delivery_Status
;


















