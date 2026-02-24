-- SELECT
--       products.name AS product_name,
--       stores.name AS store_name
-- FROM products
-- JOIN stores ON products.store_id = stores.id


-- Count total number of products

-- SELECT COUNT(*) AS total_products
-- FROM products;


-- -- Average product price across all stores

-- SELECT 
--       AVG(price) AS avg_price
-- FROM products;


-- -- Count products per store

-- SELECT 
--        store_id, COUNT(*) AS store_products
-- FROM products
-- GROUP BY store_id;


-- -- Sum of quantities per store

-- SELECT store_id,
--                SUM(quantity) AS total_quantity
-- FROM products
-- GROUP BY store_id;


-- -- Average price of products per store

-- SELECT store_id,
--                 AVG(price) AS avg_price
-- FROM products
-- GROUP BY store_id;


-- -- Maximum and minimum price of products

-- SELECT
--        MAX(price) AS max_price, 
--        MIN(price) AS min_price
-- FROM products;


-- show store with highest total quantity

-- SELECT name, total_products
-- FROM stores
-- ORDER BY total_products DESC


-- Stores with total quantity of products more than 10 (HAVING)

-- SELECT store_id,
--                 SUM(quantity) AS total_quantity
-- FROM products
-- GROUP BY store_id
-- HAVING SUM(quantity) > 10;


-- show all stores with number of products

-- SELECT stores.name,
-- COUNT(products.id)
-- FROM stores
-- JOIN products ON products.store_id = stores.id
-- GROUP BY stores.id, stores.name;


-- show average price of products per store

-- SELECT
--       stores.name AS store_name,
--       AVG(products.price) AS avg_price
-- FROM stores
-- JOIN products ON stores.id = products.store_id
-- GROUP BY stores.id, stores.name;


-- Show products from Lahore store only

-- SELECT products.name,
--                      stores.city              
-- FROM products
-- JOIN stores ON products.store_id = stores.id
-- WHERE stores.city = 'Multan';


-- Stores with more than 2 products

-- SELECT stores.name,
--                    COUNT(products.id) AS product_count
-- FROM stores
-- JOIN products ON stores.id = products.store_id
-- GROUP BY stores.id, stores.name
-- HAVING COUNT(products.id) > 2;


-- Products with price > 5000, grouped per store, having avg price > 25000

SELECT stores.name,
                   AVG(products.price) AS avg_price
FROM stores
JOIN products ON stores.id = products.store_id
WHERE products.price > 5000
GROUP BY stores.id, stores.name
HAVING AVG(products.price) > 25000;



