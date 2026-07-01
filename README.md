CRM System – MySQL Database Project
------------------------------------

 Overview

A professionally designed Customer Relationship Management (CRM)
database built using MySQL. This project demonstrates relational
database design, normalization, SQL programming, and real-world business
workflows. It is suitable for academic projects, portfolio showcases,
and SQL interview preparation.

------------------------------------------------------------------------

Key Features

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

CRM_SYSTEM

------------------------------------------------------------------------

Tables

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

-   MySQL 8.x
-   MySQL Workbench
-   SQL
-   Git
-   GitHub

------------------------------------------------------------------------

Recommended Repository Structure

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

-   Database Design
-   ER Diagram Creation
-   Relational Modeling
-   SQL Query Writing
-   Data Integrity
-   Normalization
-   Real-world CRM Workflow

------------------------------------------------------------------------

Future Enhancements

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

Nived Reddy

