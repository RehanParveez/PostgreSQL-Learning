SELECT
     products.name AS product_name,
     stores.name AS store_name
FROM products
JOIN stores ON products.store_id = stores.id;
