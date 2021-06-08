CREATE TABLE Customers(
     Customer_id init,
     Customer_name varchar(20),
     customer_tel  init
);


CREATE TABLE Products(
     Product_id NUMERIC,
     product_name varchar(20),
     price NUMERIC
);

CREATE TABLE Orders(
     
    Quantity int,
    Total_ammount NUMERIC,
    Customer_id int,
    product_id NUMERIC
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);

ALTER TABLE Products
ADD Category varchar(20);


ALTER TABLE Orders
ADD OrderDate date DEFAULT GETDATE();