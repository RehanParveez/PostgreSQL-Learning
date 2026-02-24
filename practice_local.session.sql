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

SELECT
      stores.name AS store_name,
      AVG(products.price) AS avg_price
FROM stores
JOIN products ON stores.id = products.store_id
GROUP BY stores.id, stores.name;


