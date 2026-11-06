select 'Total Sales' measure_name, sum(sales_amount) as measure_value from gold.fact_sales
union all
select 'Total Quantity', sum(quantity) as measure_value from gold.fact_sales
union all
select 'Average Price', avg(price) as measure_value from gold.fact_sales
union all
select 'Total Nr. Orders', count(distinct order_number) as measure_value from gold.fact_sales
union all
select 'Total Nr. Products', count(product_name) as measure_value from gold.dim_products
union all
select 'Total Nr. Customers', count(customer_key) as measure_value from gold.dim_customers
