CREATE DATABASE db;
USE db;


SELECT * FROM new_schema.flipkart_mobiles;

SELECT brand,sum(`selling price`) as total_sales
FROM new_schema.flipkart_mobiles
GROUP BY brand 
ORDER BY total_sales desc;

SELECT brand,model,count(model)as quantity
FROM new_schema.flipkart_mobiles
GROUP BY brand, model;

SELECT 
    Brand, 
    Model, 
    COUNT(*) AS quantity 
FROM new_schema.flipkart_mobiles
GROUP BY Brand, Model
ORDER BY quantity DESC;


 

SELECT Brand, 
       max(model) as model_max_quantity, 
       max(quantity) as max_quantity,
       min(model) as model_min_quantity,
       min(quantity) as min_quantity
       
FROM highestquantity.`sales quantities`
GROUP BY Brand;                        -- selling quantity by each brand
-----------------------------

SELECT brand,sum(`selling price`) as total_selling_price
FROM new_schema.flipkart_mobiles
GROUP BY brand ;                 -- for getting sales by brand



SELECT brand,color,count(*) as count
FROM new_schema.flipkart_mobiles
WHERE color LIKE '%black%'
GROUP BY brand,color
ORDER BY count desc
LIMIT 1;                      -- for getting which one is highest color


SELECT *
FROM(
SELECT brand,avg(Rating) as highest_rating
FROM new_schema.flipkart_mobiles
GROUP BY brand
ORDER BY highest_rating desc
LIMIT 1           -- highest rating brand
) AS highest_Rating_brand
UNION 
SELECT *
FROM (
SELECT brand,avg(Rating) as highest_rating
FROM new_schema.flipkart_mobiles
GROUP BY brand
ORDER BY highest_rating asc
LIMIT 1              -- lowest rating brand
) AS lowest_Rating_brand;

-------------------------------------
SELECT brand,avg(discount)
FROM new_schema.flipkart_mobiles_upd
GROUP BY brand;           -- average discount that gives by each brand


---------------------------------------

SELECT brand,sum(`selling price`)as sales_btw_10k_15k
FROM new_schema.flipkart_mobiles_upd
WHERE  `selling price` BETWEEN 10000 AND 15000
GROUP BY brand;             -- sales each brand btw 10k to 15k

SELECT brand,sum(`selling price`)as sales_btw_10k_15k
FROM new_schema.flipkart_mobiles_upd
WHERE  `selling price` BETWEEN 15000 AND 30000
GROUP BY brand;

--------------------------

SELECT brand,model,max(quantity) as max
FROM highestquantity.`sales quantities`
GROUP BY brand,model
ORDER BY  max desc
LIMIT 3;          -- for getting which brand model sell highest


SELECT brand,model,min(quantity) as min
FROM highestquantity.`sales quantities`
GROUP BY brand,model
ORDER BY  min asc
LIMIT 3;                 -- for getting which brand model sell lowest

---------------------------

SELECT brand,avg(`Selling Price`)as avg_brand_Selling
FROM new_schema.`flipkart_mobiles_upd`
GROUP BY brand;          -- for getting avg selling price by brand








