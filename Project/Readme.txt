# Pharmacy Management System

This project is a Pharmacy Management System designed to manage patients, doctors, medicines, inventory, prescriptions, and transactions. It includes database tables, stored procedures, views, and triggers to handle various operations.

## Requirements

To set up and run this project, you need the following:

1. **Database Management System**: Microsoft SQL Server (2016 or later).
2. **SQL Server Management Studio (SSMS)**: To execute SQL scripts and manage the database.
3. **Operating System**: Windows (recommended for compatibility with SQL Server).
4. **Permissions**: Ensure you have the necessary permissions to create databases, tables, and execute scripts.

## Project Structure

The project folder contains the following subdirectories and files:

- basic queries: Contains scripts for creating tables, inserting data, and basic queries.
- xml: Contains XML-based stored procedures and related scripts.
- non-xml: Contains non-XML-based stored procedures and related scripts.
- views: Contains scripts for creating database views.
- Triggers: Contains scripts for creating database triggers.
- desktop.ini: Configuration file.

## Setup and Run Instructions

Follow these steps to set up and run the Pharmacy Management System:

### Step 1: Create the Database
1. Open SQL Server Management Studio (SSMS).
2. Execute the script in [`basic queries/Database Creation.sql`](basic%20queries/Database%20Creation.sql) to create the database:
   ```sql
   CREATE DATABASE PharmacyManagementSystem;

###Step 2: Create Tables
Execute the following scripts in order to create the necessary tables:
1. basic queries/Patient table creation.sql
2. basic queries/Doctor Table.sql
3. basic queries/Employee Table.sql
4. basic queries/Medicine table.sql
5. basic queries/Inventory table creation.sql
6. basic queries/Supplier and Prescription table creation.sql
7. basic queries/transaction table creation.sql

###Step 3: Insert Initial Data
Populate the tables with initial data by executing the following scripts:
1. basic queries/Doctor,Employee,Medicine values.sql
2. basic queries/Patient values.sql
3. basic queries/supplier,prescription,inventory,transaction values.sql

###Step 4: Create Stored Procedures
Execute the stored procedure scripts in the xml/ and non-xml/ directories:
1. xml/procedure 1.sql
2. xml/Procedure 2.sql
3. xml/Procedure 3.sql
4. xml/procedure 4.sql
5. non-xml/procedure 1 (NON-XML).sql
6. non-xml/procedure 2 (NON-XML).sql

###Step 5: Create Views
Execute the scripts in the views/ directory to create database views:
1. views/view 1 code.sql
2. views/view 2 code.sql

###Step 6: Create Triggers
Execute the scripts in the Triggers/ directory to create database triggers:
1. Triggers/Trigger 1.sql
2. Triggers/Trigger 2.sql

###Step 7: Test the Setup
Use the provided output and query files to test the stored procedures, views, and triggers:
1. xml/procedure 4 output.sql
2. views/view 1 output.sql
3. Triggers/trigger 1 output.sql

###Step 8: Verify Results
Run queries to verify the data and functionality:
1. Check the tables using SELECT statements.
2. Execute stored procedures to ensure they work as expected.
3. Test triggers by performing relevant insert/update operations.