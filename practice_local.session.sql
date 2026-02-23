CREATE TABLE stores(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    city VARCHAR(40) NOT NULL,
    total_products INT
);

INSERT INTO stores (name, city, total_products) VALUES
('Tech Store', 'Multan', 25),
('General Store', 'Bahawalpur', 30),
('Toys Store', 'Lahore', 20);
