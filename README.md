  Bookstore Management System
  --------------------------
  
  Project Overview
  -----------------
  
  
    • Developed a Bookstore Management System using MySQL.
    
    • Designed a relational database to manage books, authors, genres, customers, and orders.
    
    • Demonstrates database design, normalization, SQL queries, and relationships.
    
    • Suitable for academic projects, interview preparation, and GitHub portfolios.
  
  Features
  ---------
  
    • Author Management
    
    • Book Management
    
    • Genre Management
    
    • Customer Management
    
    • Order Management
    
    • Order Details Management
    
    • Primary Key and Foreign Key Relationships
    
    • One-to-Many Relationships
    
    • Data Integrity using Constraints
    
    • Sample Data Population
    
    • ER Diagram
    
    • Beginner to Advanced SQL Queries
  
  Technologies Used
  ----------------
  
    • MySQL 8.x
    • SQL
    • MySQL Workbench
    • Git
    • GitHub
  
  Database Name
  -------------
  
    • bookstore_db
  
  Database Tables
  ---------------
  
    • Authors
    
    • Genres
    
    • Customers
    
    • Books
    
    • Orders
    
    • Order_Details
  
  Table Description
  ------------------
  
      • Authors – Stores author information.
      • Genres – Stores book categories.
      • Customers – Stores customer information.
      • Books – Stores book details including author and genre.
      • Orders – Stores customer purchase information.
      • Order_Details – Stores ordered books, quantity, and purchase price.
  
  Relationships
  -------------
  
      • One Author can write many Books.
      • One Genre can contain many Books.
      • One Customer can place many Orders.
      • One Order can contain many Order Details.
      • One Book can appear in many Order Details.
  
  SQL Concepts Covered
  --------------------
  
      • CREATE DATABASE
      • CREATE TABLE
      • INSERT
      • UPDATE
      • DELETE
      • SELECT
      • WHERE
      • ORDER BY
      • GROUP BY
      • HAVING
      • LIMIT
      • COUNT()
      • SUM()
      • AVG()
      • MIN()
      • MAX()
      • INNER JOIN
      • LEFT JOIN
      • RIGHT JOIN
      • Subqueries
  
  Sample Queries
  --------------
  
      • Display books below a specified price.
      • Find customer email addresses.
      • Display books with author names.
      • Find books by genre.
      • Count customers by city.
      • Show the most expensive book.
      • Calculate the total amount spent by a customer.
      • Find the genre with the highest stock.
      • Display monthly orders.
      • Find books that have never been ordered.
      • Calculate total books sold per author.
      • Find the customer with the highest number of orders.
      • Display the best-selling book.
  
  Learning Outcomes
  -----------------
  
    • Relational Database Design
    • Entity Relationship Modeling
    • SQL Programming
    • Database Normalization
    • Joins and Relationships
    • Aggregate Functions
    • Query Optimization
    • Data Integrity
  
  Future Enhancements
  --------------------
  
    • User Authentication
    • Inventory Management
    • Payment Module
    • Invoice Generation
    • Supplier Management
    • Sales Dashboard
    • Stored Procedures
    • Triggers
    • Views
    • Backup and Recovery
  
  Project Structure
  -----------------
  
    • README.md
    • bookstore.sql
    • queries.sql
    • ER_Diagram.png
    • screenshots/
    • LICENSE
  
  
  
  
  CRM System – MySQL Database Project
  ------------------------------------
  
   Overview
   --------
  
  A professionally designed Customer Relationship Management (CRM)
  database built using MySQL. This project demonstrates relational
  database design, normalization, SQL programming, and real-world business
  workflows. It is suitable for academic projects, portfolio showcases,
  and SQL interview preparation.
  
  ------------------------------------------------------------------------
  
  Key Features
  ------------
  
  -   Complete CRM database implementation
  -   Well-structured relational schema
  -   Primary Key & Foreign Key relationships
  -   Normalized database design (up to 3NF)
  -   One-to-Many and Many-to-Many relationships
  -   Sample dataset (180+ records)
  -   CRUD operations
  -   Complex SQL queries
  -   Aggregate functions
  -   Joins (INNER, LEFT, RIGHT)
  -   GROUP BY, HAVING, ORDER BY
  -   Subqueries
  -   Data integrity using constraints
  
  ------------------------------------------------------------------------
   Database Name
   ------------
  
  CRM_SYSTEM
  
  ------------------------------------------------------------------------
  
  Tables
  ------
  
  -   Admin – Stores administrator information
  -   CRM – CRM details managed by administrators
  -   Employee – Employee records
  -   Customer – Customer information
  -   Orders – Customer orders
  -   Product – Product catalog
  -   Services – Services offered
  -   Order_Product – Junction table between Orders and Products
  -   Service_Product – Junction table between Services and Products
  
  ------------------------------------------------------------------------
  
  Entity Relationships
  --------------------
  
  -   Admin → CRM (1:M)
  -   Admin → Employee (1:M)
  -   Employee → Customer (1:M)
  -   Customer → Orders (1:M)
  -   Employee → Orders (1:M)
  -   Customer → Services (1:M)
  -   Orders ↔ Products (M:M)
  -   Services ↔ Products (M:M)
  
  ------------------------------------------------------------------------
  
  Technologies
  ------------
  
  -   MySQL 8.x
  -   MySQL Workbench
  -   SQL
  -   Git
  -   GitHub
  
  ------------------------------------------------------------------------
  
  Recommended Repository Structure
  -------------------------------
  
      CRM-System/
      │── README.md
      │── database.sql
      │── tables.sql
      │── insert_data.sql
      │── queries.sql
      │── er_diagram.png
      │── screenshots/
      │── LICENSE
  
  ------------------------------------------------------------------------
  
  SQL Concepts Demonstrated
  -------------------------
  
  DDL
  
  -   CREATE DATABASE
  -   CREATE TABLE
  -   ALTER TABLE
  -   DROP TABLE
  -   TRUNCATE TABLE
  
  DML
  
  -   INSERT
  -   UPDATE
  -   DELETE
  
  DQL
  
  -   SELECT
  -   DISTINCT
  -   WHERE
  -   ORDER BY
  -   LIMIT
  
  Advanced SQL
  
  -   INNER JOIN
  -   LEFT JOIN
  -   RIGHT JOIN
  -   Aggregate Functions
  -   GROUP BY
  -   HAVING
  -   Subqueries
  
  ------------------------------------------------------------------------
  
  Sample Dataset
  ---------------
  -   20 Admin records
  -   20 CRM records
  -   20 Employee records
  -   20 Customer records
  -   20 Product records
  -   20 Order records
  -   20 Service records
  -   20 Order_Product records
  -   20 Service_Product records
  
  Total Records: 180+
  
  ------------------------------------------------------------------------
  
  Learning Outcomes
  -----------------
  
  -   Database Design
  -   ER Diagram Creation
  -   Relational Modeling
  -   SQL Query Writing
  -   Data Integrity
  -   Normalization
  -   Real-world CRM Workflow
  
  ------------------------------------------------------------------------
  
  Future Enhancements
  -------------------
  
  -   User Authentication
  -   Invoice Management
  -   Payment Module
  -   Customer Dashboard
  -   Reporting & Analytics
  -   Stored Procedures
  -   Triggers
  -   Views
  -   Backup & Restore
  
  ------------------------------------------------------------------------
  
  👨‍💻 Author
  ----------
  
  Nived Reddy
  
