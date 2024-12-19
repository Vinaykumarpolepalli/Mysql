

-- MySQL is an open-source relational database management system (RDBMS).

-- MySQL uses SQL (Structured Query Language) for managing and query data. 

-- It is famous for its reliability, flexibility, and ease of use.

-- Key Features of MySQL:
-- Relational Database: 
-- Data is organized into tables, which consist of rows and columns. 
-- Each table can relate to other tables using keys (Example: primary keys and foreign keys).

-- SQL-Based: 
-- MySQL uses SQL (Structured Query Language) for querying and managing data.
-- This makes compatible with supported by web development frameworks, tools, and languages.

-- Open Source: 
-- MySQL is free to use.
-- Source code is available for modification and distribution under the GNU General Public License.

-- Cross-Platform: 
-- MySQL is available for various operating systems, including Linux, Windows, and macOS.

-- Scalability: 
-- MySQL handles small to large-scale applications.
-- MySQL supports various indexing techniques to optimize performance for high-volume transactions.

-- Supports ACID: 
-- MySQL supports ACID (Atomicity, Consistency, Isolation, Durability) properties.
-- Transactions are processed reliably and that the database remains consistent even in the case of system failures.

-- Multi-User Support: 
-- MySQL supports concurrent access by multiple users with varying levels of permissions.

-- Advantages of MySQL:
-- High Performance: 
-- MySQL is optimized for fast data retrieval and high-volume transactions.

-- Security: 
-- It has robust security features, including data encryption, secure user authentication, and access control.

-- Community Support: 
-- Being open-source, MySQL has a large community of developers and users, offering extensive support and documentation.

-- Integration: 
-- MySQL works well with various programming languages, frameworks, and web technologies, including Java, PHP, Python, Ruby, and JavaScript.


-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- Constraints in MySQL

-- In MySQL, constraints are used to define rules for data integrity and consistency. 
-- Constraints ensures that the data is accurate. 

-- Several types of constraints:

-- 1. PRIMARY KEY
-- A primary key uniquely identifies each record in a table.
-- It cannot contain NULL values.
-- Each table can only have one primary key.
-- It is often applied to a single column or a combination of columns (composite key).

-- 2. FOREIGN KEY
-- A foreign key is a field (or combination of fields) that uniquely identifies a row in another table.
-- It establishes a relationship between two tables.
-- The foreign key ensures referential integrity by restricting the values that can be inserted into the foreign key column(s) to those that exist in the primary key column(s) of another table.

-- 3. UNIQUE
-- A unique constraint ensures that all values in a column are different.
-- Unlike the primary key, a column with a unique constraint can contain NULL values, but all non-null values must be unique.
-- Multiple unique constraints can be defined on a table.

-- 4. NOT NULL
-- The NOT NULL constraint ensures that a column cannot contain a NULL value.
-- It is commonly used for columns that must have data.

-- 5. CHECK
-- A check constraint is used to limit the range of values that can be stored in a column.
-- MySQL added support for the CHECK constraint in version 8.0.16. In earlier versions, CHECK constraints were parsed but ignored.

-- 6. DEFAULT
-- The DEFAULT constraint is used to set a default value for a column if no value is specified during an insert.
-- This helps avoid inserting NULL values where they are not desired.

-- 7. INDEX
-- An index is not technically a constraint, but it is often used in conjunction with constraints to speed up data retrieval.
-- Indexes can be created on one or more columns to improve query performance.

-- 8. AUTO_INCREMENT
-- The AUTO_INCREMENT constraint is used to automatically generate a unique value when a new record is inserted, typically used for primary keys.
-- The value starts at 1 and increments by 1 for each new row


-- Primary Key:
-- Uniquely identifies each row within its own table.
-- Cannot contain NULL values.
-- A table can have only one primary key.
-- For Primary Key we need not to give not null constraint.
-- Primary keys are default indexes.

-- Foreign Key:
-- Establishes a relationship between two tables.
-- Foreign Key of one table has to be another table Primary Key.
-- Can contain NULL values (unless explicitly restricted) - Better to take not null.
-- A table can have many foreign keys.


-- 1st Normal Form:
-- First Normal Form (1NF) of normalization process, used to organize and structure data in a relational database. 
-- Conditions:
-- Atomic Values: All columns must contain atomic (indivisible) values. 
-- Each field (or cell) should contain only a single value. (That is not a set of values or lists). 
-- Each row in the table must be unique. 
-- We should uniquely identify each record, (using a Primary Key).
-- Each column should store values of a single data type (Example: text, integer, date), ensuring column consistency.
-- 1NF Features:
-- Data should not contain multiple values in a single column (No multiple phone numbers stored in one column).
-- Every column must hold a single value per record.


-- Group by:
-- GROUP BY clause is used to arrange identical data into groups. 
-- Useful to perform aggregate operations, such as counting, summing, or averaging, on groups of rows that share a common property.
-- Every column in the SELECT statement that is not part of an aggregate function must be included in the GROUP BY clause.
-- GROUP BY is used with aggregate functions such as COUNT(), SUM(), AVG(), MIN(), and MAX().
-- Use HAVING clause to filter the results after aggregation, while WHERE is used before aggregation.
-- Evaluation Process: FROM->WHERE->GROUP BY->HAVING
-- Syntax: 
-- SELECT column1, column2, aggregate_function(column3)
-- FROM table_name
-- WHERE condition
-- GROUP BY column1, column2;