-- 1. Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(150),
    email VARCHAR(100),
    phone VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    signup_date DATE
);

-- 2. Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(50),
    unit_price NUMERIC(12, 2),
    stock_quantity INT
);

-- 3. Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(50)
);

-- 4. Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price NUMERIC(12, 2)
);