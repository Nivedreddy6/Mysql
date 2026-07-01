CREATE DATABASE CRM_SYSTEM;
USE CRM_SYSTEM;

#Admin
CREATE TABLE Admin (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255) NOT NULL
);

#CRM
CREATE TABLE CRM (
    crm_id INT PRIMARY KEY AUTO_INCREMENT,
    crm_name VARCHAR(100),
    admin_id INT,
    FOREIGN KEY (admin_id) REFERENCES Admin(admin_id)
);

#Employee
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    admin_id INT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    dept VARCHAR(100),
    phone VARCHAR(15),

    FOREIGN KEY (admin_id)
    REFERENCES Admin(admin_id)
);

#Customer
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(200),

    FOREIGN KEY (employee_id)
    REFERENCES Employee(employee_id)
);

#Orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    employee_id INT,
    order_date DATE,
    status VARCHAR(50),
    amount DECIMAL(10,2),

    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id),

    FOREIGN KEY (employee_id)
    REFERENCES Employee(employee_id)
);

#Services
CREATE TABLE Services (
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    service_name VARCHAR(100),
    description VARCHAR(200),
    price DECIMAL(10,2),

    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id)
);

#Product
CREATE TABLE Product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    description VARCHAR(200),
    price DECIMAL(10,2)
);

#Order_Product (Many-to-Many)
CREATE TABLE Order_Product (

    order_id INT,
    product_id INT,
    quantity INT,

    PRIMARY KEY(order_id, product_id),

    FOREIGN KEY(order_id)
    REFERENCES Orders(order_id),

    FOREIGN KEY(product_id)
    REFERENCES Product(product_id)
);

#Service_Product (Many-to-Many)
CREATE TABLE Service_Product (

    service_id INT,
    product_id INT,

    PRIMARY KEY(service_id, product_id),

    FOREIGN KEY(service_id)
    REFERENCES Services(service_id),

    FOREIGN KEY(product_id)
    REFERENCES Product(product_id)
);

#Admin 

INSERT INTO Admin(name,email,password) VALUES
('John Smith','john@gmail.com','john@123'),
('Alice Brown','alice@gmail.com','alice@123'),
('David Miller','david@gmail.com','david@123'),
('Emma Wilson','emma@gmail.com','emma@123'),
('Chris Evans','chris@gmail.com','chris@123'),
('Sophia Lee','sophia@gmail.com','sophia@123'),
('Daniel King',NULL,'daniel@123'),
('Olivia White','olivia@gmail.com','olivia@123'),
('James Scott','james@gmail.com','james@123'),
('Lucas Hall',NULL,'lucas@123'),
('Mia Allen','mia@gmail.com','mia@123'),
('Henry Clark','henry@gmail.com','henry@123'),
('Grace Young','grace@gmail.com','grace@123'),
('Jack Walker','jack@gmail.com','jack@123'),
('Lily Green',NULL,'lily@123'),
('Ryan Adams','ryan@gmail.com','ryan@123'),
('Ella Baker','ella@gmail.com','ella@123'),
('Noah Carter','noah@gmail.com','noah@123'),
('Ava Turner',NULL,'ava@123'),
('Ethan Moore','ethan@gmail.com','ethan@123');

#CRM

INSERT INTO CRM(crm_name,admin_id) VALUES
('Sales CRM',1),
('Marketing CRM',2),
('Support CRM',3),
('HR CRM',4),
('Finance CRM',5),
('Retail CRM',6),
('Medical CRM',7),
('Education CRM',8),
('Real Estate CRM',9),
('Insurance CRM',10),
('Travel CRM',11),
('Hospital CRM',12),
('School CRM',13),
('Logistics CRM',14),
('Restaurant CRM',15),
('Bank CRM',16),
('Service CRM',17),
('Automobile CRM',18),
('IT CRM',19),
('Corporate CRM',20);

#Employee

INSERT INTO Employee(admin_id,name,email,dept,phone) VALUES
(1,'Rahul','rahul@gmail.com','Sales','9876543210'),
(1,'Anjali','anjali@gmail.com','HR','9876543211'),
(2,'Ravi','ravi@gmail.com','Support','9876543212'),
(2,'Sneha',NULL,'Marketing','9876543213'),
(3,'Kiran','kiran@gmail.com','Finance',NULL),
(3,'Deepa','deepa@gmail.com','Sales','9876543215'),
(4,'Arjun','arjun@gmail.com','Sales','9876543216'),
(5,'Pooja',NULL,'Support','9876543217'),
(6,'Vinay','vinay@gmail.com','Marketing','9876543218'),
(7,'Keerthi','keerthi@gmail.com','HR',NULL),
(8,'Ajay','ajay@gmail.com','Sales','9876543220'),
(9,'Meena','meena@gmail.com','Support','9876543221'),
(10,'Varun','varun@gmail.com','Finance','9876543222'),
(11,'Sita',NULL,'Sales','9876543223'),
(12,'Mahesh','mahesh@gmail.com','Marketing','9876543224'),
(13,'Nisha','nisha@gmail.com','HR','9876543225'),
(14,'Prakash','prakash@gmail.com','Support',NULL),
(15,'Divya','divya@gmail.com','Finance','9876543227'),
(16,'Ramesh','ramesh@gmail.com','Sales','9876543228'),
(17,'Harsha','harsha@gmail.com','Marketing','9876543229');

#Customer

INSERT INTO Customer(employee_id,name,email,phone,address) VALUES
(1,'Amit','amit@gmail.com','9000011111','Hyderabad'),
(2,'Neha','neha@gmail.com','9000011112','Chennai'),
(3,'Raj',NULL,'9000011113','Bangalore'),
(4,'Priya','priya@gmail.com',NULL,'Delhi'),
(5,'Arav','arav@gmail.com','9000011115',NULL),
(6,'Kavya','kavya@gmail.com','9000011116','Mumbai'),
(7,'Manoj',NULL,'9000011117','Pune'),
(8,'Lakshmi','lakshmi@gmail.com',NULL,'Hyderabad'),
(9,'Surya','surya@gmail.com','9000011119','Vizag'),
(10,'Anu','anu@gmail.com','9000011120','Guntur'),
(11,'Rohit','rohit@gmail.com','9000011121','Warangal'),
(12,'Swathi',NULL,'9000011122','Nellore'),
(13,'Harini','harini@gmail.com',NULL,NULL),
(14,'Karthik','karthik@gmail.com','9000011124','Chennai'),
(15,'Naveen','naveen@gmail.com','9000011125','Bangalore'),
(16,'Bhavana',NULL,'9000011126','Hyderabad'),
(17,'Yash','yash@gmail.com',NULL,'Pune'),
(18,'Teja','teja@gmail.com','9000011128','Mumbai'),
(19,'Rani','rani@gmail.com','9000011129',NULL),
(20,'Sai','sai@gmail.com','9000011130','Delhi');

#Product

INSERT INTO Product(product_name,description,price) VALUES
('Laptop','Dell Laptop',65000),
('Mouse','Wireless Mouse',900),
('Keyboard','Mechanical Keyboard',2500),
('Monitor','24 Inch Monitor',12000),
('Printer',NULL,9000),
('Scanner','HP Scanner',7000),
('Router','WiFi Router',3000),
('Hard Disk','1TB HDD',4500),
('SSD','512GB SSD',6000),
('Webcam','HD Webcam',1800),
('Projector',NULL,25000),
('Speaker','Bluetooth Speaker',3200),
('UPS','Power Backup',5500),
('Tablet','Android Tablet',18000),
('Smartphone','5G Mobile',30000),
('Headphones','Noise Cancelling',4500),
('Microphone',NULL,3500),
('Pen Drive','64GB USB',800),
('Graphics Card','RTX GPU',70000),
('Server','Rack Server',150000);

#orders

INSERT INTO Orders(customer_id, employee_id, order_date, status, amount) VALUES
(1,1,'2026-01-05','Delivered',65000.00),
(2,2,'2026-01-08','Pending',12000.00),
(3,3,'2026-01-10','Cancelled',900.00),
(4,4,'2026-01-12','Delivered',2500.00),
(5,5,'2026-01-15',NULL,4500.00),
(6,6,'2026-01-18','Shipped',3000.00),
(7,7,'2026-01-20','Delivered',18000.00),
(8,8,'2026-01-21','Pending',7000.00),
(9,9,'2026-01-23','Delivered',25000.00),
(10,10,'2026-01-25','Cancelled',800.00),
(11,11,'2026-01-27','Delivered',3500.00),
(12,12,'2026-02-01','Pending',6000.00),
(13,13,'2026-02-03','Shipped',5500.00),
(14,14,'2026-02-06','Delivered',3200.00),
(15,15,'2026-02-08',NULL,30000.00),
(16,16,'2026-02-10','Delivered',4500.00),
(17,17,'2026-02-12','Pending',9000.00),
(18,18,'2026-02-15','Delivered',150000.00),
(19,19,'2026-02-17','Cancelled',1800.00),
(20,20,'2026-02-20','Delivered',70000.00);

#Services

INSERT INTO Services(customer_id, service_name, description, price) VALUES
(1,'Installation','Laptop Installation',1500.00),
(2,'Repair','Printer Repair',2500.00),
(3,'Networking','Office Network Setup',5000.00),
(4,'Maintenance',NULL,1200.00),
(5,'Virus Removal','Remove Malware',800.00),
(6,'AMC','Annual Maintenance',4500.00),
(7,'Cloud Setup','AWS Configuration',9000.00),
(8,'Data Recovery',NULL,6500.00),
(9,'Hardware Upgrade','RAM Upgrade',3500.00),
(10,'Software Installation','Windows Installation',1000.00),
(11,'Training','CRM Training',7000.00),
(12,'Consultation','IT Consultation',2000.00),
(13,'Backup','Database Backup',3000.00),
(14,'Migration','Server Migration',8500.00),
(15,'Firewall Setup',NULL,5500.00),
(16,'Website Hosting','Hosting Service',6000.00),
(17,'Email Setup','Business Email',2500.00),
(18,'Security Audit','Security Check',10000.00),
(19,'Performance Tuning',NULL,4500.00),
(20,'Monitoring','Server Monitoring',7000.00);

#Order_Product

INSERT INTO Order_Product(order_id, product_id, quantity) VALUES
(1,1,1),
(2,4,1),
(3,2,2),
(4,3,1),
(5,8,1),
(6,7,2),
(7,14,1),
(8,6,1),
(9,11,1),
(10,18,3),
(11,17,1),
(12,9,1),
(13,13,1),
(14,12,2),
(15,15,1),
(16,16,2),
(17,5,1),
(18,20,1),
(19,10,2),
(20,19,1);

#Service_Product

INSERT INTO Service_Product(service_id, product_id) VALUES
(1,1),
(2,5),
(3,7),
(4,3),
(5,15),
(6,13),
(7,20),
(8,8),
(9,9),
(10,1),
(11,14),
(12,6),
(13,20),
(14,20),
(15,7),
(16,20),
(17,15),
(18,19),
(19,4),
(20,20);

#Display all customers.
SELECT * FROM Customer;

#Display employee names and departments.
SELECT name, dept
FROM Employee;

#Find orders with amount greater than ₹10,000.
SELECT *
FROM Orders
WHERE amount > 10000;

#Display customer name and employee name.
SELECT
    c.customer_id,
    c.name AS customer_name,
    e.name AS employee_name
FROM Customer c
JOIN Employee e
ON c.employee_id = e.employee_id;

#Count customers handled by each employee.
SELECT
    e.employee_id,
    e.name,
    COUNT(c.customer_id) AS total_customers
FROM Employee e
LEFT JOIN Customer c
ON e.employee_id = c.employee_id
GROUP BY e.employee_id, e.name;

#Find the highest order amount.
SELECT MAX(amount) AS highest_order
FROM Orders;

#Display products ordered by customers.
SELECT
    o.order_id,
    p.product_name,
    op.quantity,
    p.price
FROM Orders o
JOIN Order_Product op
ON o.order_id = op.order_id
JOIN Product p
ON op.product_id = p.product_id;

#Find customers who never placed an order.
SELECT
    c.customer_id,
    c.name
FROM Customer c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

#Find the employee who generated the highest sales.
SELECT
    e.employee_id,
    e.name,
    SUM(o.amount) AS total_sales
FROM Employee e
JOIN Orders o
ON e.employee_id = o.employee_id
GROUP BY e.employee_id, e.name
ORDER BY total_sales DESC
LIMIT 1;

#Find the top 5 customers by total purchase amount.
SELECT
    c.customer_id,
    c.name,
    SUM(o.amount) AS total_purchase
FROM Customer c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_purchase DESC
LIMIT 5;

