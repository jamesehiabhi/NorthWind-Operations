# NorthWind-Operations
## Overview Of the NorthWind Descriptive Analysis

<img src="https://github.com/jamesehiabhi/NorthWind-Operations/blob/main/Displays/NorthWind%20Visualisation.jpg" alt="Displays" width="800" height="400"/> 

The Northwind database is a sample database created by Microsoft for educational and demonstration purposes. It simulates the operations of a fictional company called Northwind Traders, which imports and exports speciality foods from around the world. This documentation aims to provide a detailed overview of the database schema, including its tables, relationships, and key functionalities.

### Tables
**The Northwind database consists of the following tables:**
- categories: Stores information about product categories, including category ID, name, description, and picture.
- customer_demographics: Contains customer demographic data, including customer type ID and description.
- customers: Holds customer information such as ID, company name, contact details, and address.
- customer_customer_demo: Represents a many-to-many relationship between customers and customer demographics.
- employees: Stores employee data, including employee ID, personal details, contact information, and managerial relationships.
- suppliers: Contains details about product suppliers, including supplier ID, company name, contact information, and homepage.
- products: Stores product information such as product ID, name, supplier ID, category ID, pricing, and inventory details.
- region: Defines regions with a region ID and description.
- shippers: Holds data about shipping companies, including shipper ID, company name, and contact information.
- orders: Stores order information, including order ID, customer ID, employee ID, shipping details, and order dates.
- territories: Contains territory information with territory ID, description, and associated region ID.
- employee_territories: Represents the many-to-many relationship between employees and territories.
- order_details: Stores details about order items, including order ID, product ID, unit price, quantity, and discounts.
- us_states: Holds information about US states, including state ID, name, abbreviation, and region.

### Relationships
**The database schema includes several relationships between tables:**
- Customers are associated with orders through the customer_id field in the orders table.
- Employees are linked to orders through the employee_id field in the orders table.
- Products are associated with suppliers and categories through foreign key constraints in the products table.
- Orders are connected to shippers via the ship_via field in the orders table.
- Territories are associated with regions through the region_id field in the territories table.
- Employee territories are linked to employees and territories through the employee_id and territory_id fields in the employee_territories table.

<img src="https://github.com/jamesehiabhi/NorthWind-Operations/blob/main/Data%20relationship.png" alt="Displays" width="900" height="900"/> 

### Key Insights
**1. Categories Table:**
- The database contains a categories table with information about different product categories.
- Example Query: SELECT categoryid, categoryname FROM categories;

**2. Customers Table:**
- The customers table holds information about customers, including their names and contact details.
- Example Query: SELECT customerid, customername, contactname FROM customers;

**3. Employees Table:**
- The employees table contains details about employees, including their birthdates and names.
- Example Query: SELECT employeeid, firstname, lastname FROM employees WHERE firstname LIKE '%a%';

**4. Order Details Table:**
- The orderdetails table provides details of orders placed, including product IDs and quantities.
- Example Query: SELECT orderid, productid, quantity FROM orderdetails WHERE quantity > 20;

**5. Orders Table:**
- The orders table includes information about orders, such as customer IDs and order dates.
- Example Query: SELECT * FROM orders WHERE customerid = 21;

**6. Products Table:**
- The products table contains information about products, including their prices.
- Example Query: SELECT * FROM products ORDER BY price DESC LIMIT 5;

**7. Suppliers Table:**
- The suppliers table holds information about suppliers.
- Example Query: SELECT * FROM suppliers LIMIT 5;

<img src="https://github.com/jamesehiabhi/NorthWind-Operations/blob/main/Displays/Employee_details.png" alt="Displays" width="800" height="400"/>
<img src="https://github.com/jamesehiabhi/NorthWind-Operations/blob/main/Displays/Customer_details.png" alt="Displays" width="800" height="400"/>

### Advanced Queries and Insights
**1. Filtering and Aggregation:**
- The database supports advanced filtering and aggregation queries. For example, filtering order details where the quantity is greater than 20 or aggregating the total quantity of products ordered.
- Example Query: SELECT orderid, SUM(quantity) FROM orderdetails GROUP BY orderid HAVING SUM(quantity) > 50;

**2. Date Range Filtering:**
- Queries can filter employees based on their birthdates within a specific range.
- Example Query: SELECT * FROM employees WHERE birthdate BETWEEN '1950-01-01' AND '1960-12-31';

**3. Distinct Values:**
- The database can retrieve distinct values, such as unique countries from the customers table.
- Example Query: SELECT DISTINCT country FROM customers;

<img src="https://github.com/jamesehiabhi/NorthWind-Operations/blob/main/Displays/Product_Categories.png" alt="Displays" width="800" height="400"/>

### Conclusion

The NorthWind database provides a comprehensive view of a company's sales operations, with detailed information about products, customers, employees, orders, and suppliers. The SQL queries in the file demonstrate various techniques for data retrieval, filtering, aggregation, and sorting, offering valuable insights into the database's structure and content.
This report highlights the versatility and depth of the NorthWind database, making it a valuable resource for data analysis and business intelligence.

See further analysis here - https://github.com/jamesehiabhi/NorthWind-Operations/blob/main/Northwind_deep%20learn.pdf

<br>

### *Kindly share your feedback and I am happy to Connect 🌟*

<img src="https://github.com/jamesehiabhi/NorthWind-Operations/blob/main/Displays/My%20Card1.jpg" alt="Displays" width="600" height="150"/>


