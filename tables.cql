CREATE KEYSPACE IF NOT EXISTS sales_data WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 3};

USE sales_data;

CREATE TABLE IF NOT EXISTS bronze_sales (
    Region TEXT,
    Country TEXT,
    Item_Type TEXT,
    Sales_Channel TEXT,
    Order_Priority TEXT,
    Order_Date DATE,
    Order_ID BIGINT PRIMARY KEY,
    Ship_Date DATE,
    Units_Sold INT,
    Unit_Price DECIMAL,
    Unit_Cost DECIMAL,
    Total_Revenue DECIMAL,
    Total_Cost DECIMAL,
    Total_Profit DECIMAL
);


CREATE TABLE IF NOT EXISTS silver_sales (
    Region TEXT,
    Country TEXT,
    Item_Type TEXT,
    Sales_Channel TEXT,
    Order_Priority TEXT,
    Order_Date DATE,
    Order_ID BIGINT PRIMARY KEY,
    Ship_Date DATE,
    Units_Sold INT,
    Unit_Price DECIMAL,
    Unit_Cost DECIMAL,
    Total_Revenue DECIMAL,
    Total_Cost DECIMAL,
    Total_Profit DECIMAL
);


Total Revenue per Region:

CREATE TABLE IF NOT EXISTS gold_sales_region (
    Region TEXT PRIMARY KEY,
    Total_Revenue DECIMAL,
    Total_Cost DECIMAL,
    Total_Profit DECIMAL
);


Total Units Sold per Item Type:

CREATE TABLE IF NOT EXISTS gold_sales_item_type (
    Item_Type TEXT PRIMARY KEY,
    Total_Units_Sold INT,
    Total_Revenue DECIMAL,
    Total_Profit DECIMAL
);

Total Sales by Country:

CREATE TABLE IF NOT EXISTS gold_sales_country (
    Country TEXT PRIMARY KEY,
    Total_Revenue DECIMAL,
    Total_Profit DECIMAL
);
