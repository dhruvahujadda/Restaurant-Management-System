1. Retrieve the names and prices of all items in the menu.
Code-
SELECT Name, Price FROM MENU;

2. List the customer names and their contact details who have placed orders on a specific date, e.g., '2023-03-03'.
Code-
SELECT c.customer_name, c.Contact
FROM CUSTOMER c
INNER JOIN ORDERS o ON c.Customer_Id = o.Customer_Id
WHERE o.Date = '2023-03-03';

3. Display the inventory items along with their suppliers.
Code-
SELECT Item_Name, Supplier FROM INVENTORY;

4. Retrieve the total amount earned from each payment method.
Code-
SELECT Payment_Method, SUM(m.Price * o.Quantity) AS Total_Earnings
FROM PAYMENTS p
INNER JOIN ORDERS o ON p.Order_No = o.Order_No
INNER JOIN MENU m ON o.Name = m.Name
GROUP BY Payment_Method;

5. List the employee names and their respective posts who joined after January 1, 2022.
Code-
SELECT Employee_Name, Post
FROM WORKERS
WHERE Date_of_joining > '2022-01-01';

6. Retrieve the average salary of cooks and senior cooks.
Code-
SELECT Post, AVG(Salary) AS Average_Salary
FROM WORKERS
WHERE Post IN ('Cook', 'SeniorCook')
GROUP BY Post;

7. Show the table numbers and the respective customer names for occupied tables.
Code-
SELECT t.Table_Number, c.customer_name
FROM TABLES t
INNER JOIN CUSTOMER c ON t.Customer_Id = c.Customer_Id;

8. Display the manager details with their respective number of years in the organization.
Code-
SELECT Manager_Id, Fname, Lname, Contact, Join_Date,
       DATEDIFF(CURRENT_DATE, Join_Date) / 365 AS Years_In_Organization
FROM MANAGER;

9. List the top 3 customers based on the total amount they have spent.
Code-
SELECT c.customer_name, SUM(m.Price * o.Quantity) AS Total_Spent
FROM CUSTOMER c
INNER JOIN ORDERS o ON c.Customer_Id = o.Customer_Id
INNER JOIN MENU m ON o.Name = m.Name
GROUP BY c.customer_name
ORDER BY Total_Spent DESC
LIMIT 3;

10. Retrieve the names of items that are out of stock.
Code-
SELECT Item_Name
FROM INVENTORY
WHERE Quantity = 0;

11. Update the Inventory table and change quantity of Onion from 150 to 100.
Code- 
UPDATE INVENTORY
SET Quantity = 150
WHERE Item_Name = 'Onion';
