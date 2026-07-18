# Naijamart SQL Analysis

An end-to-end SQL data analysis project investigating customer purchasing patterns, geographic revenue distribution, and inventory performance for a Nigerian e-commerce platform (**Naijamart**).

## Project Overview
This repository uses structured SQL operations (`JOINs`, `aggregations`, `GROUP BY` grouping, and order sort operations) to evaluate relational business data across four domains:
*   **Customers**: Demographic and registration history.
*   **Orders**: Transaction status details and logging timelines.
*   **Products**: Multi-category inventory profiles.
*   **Order Items**: Itemized break-downs per checkout instance.

---

## Repository Structure
```text
├── datasets/
│   ├── naijamart_customers.csv
│   ├── naijamart_products.csv
│   ├── naijamart_orders.csv
│   └── naijamart_order_items.csv
├── scripts/
│   ├── schema_setup.sql
│   └── analytical_queries.sql
└── README.md
