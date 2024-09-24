CREATE TABLE Employees (
    employee_id    NUMBER PRIMARY KEY,
    first_name     VARCHAR2(50),
    last_name      VARCHAR2(50),
    hire_date      DATE,
    salary         NUMBER(8, 2),
    department_id  NUMBER,
    manager_id     NUMBER,
    commission_pct NUMBER(3, 2)
);

-- Existing Data (Updated previously)
INSERT INTO Employees VALUES (101, 'John', 'Doe', TO_DATE('2019-02-15', 'YYYY-MM-DD'), 55000, 1, 102, 0.05);
INSERT INTO Employees VALUES (102, 'Jane', 'Smith', TO_DATE('2017-11-03', 'YYYY-MM-DD'), 60000, 1, NULL, NULL);
INSERT INTO Employees VALUES (103, 'Sara', 'Brown', TO_DATE('2020-05-22', 'YYYY-MM-DD'), 45000, 2, 102, NULL);
INSERT INTO Employees VALUES (104, 'Mike', 'Johnson', TO_DATE('2018-08-14', 'YYYY-MM-DD'), 75000, 3, 105, 0.1);
INSERT INTO Employees VALUES (105, 'Lisa', 'White', TO_DATE('2016-12-01', 'YYYY-MM-DD'), 80000, 3, NULL, NULL);
INSERT INTO Employees VALUES (106, 'Alex', 'Green', TO_DATE('2021-01-10', 'YYYY-MM-DD'), 55000, 1, 102, NULL);
INSERT INTO Employees VALUES (107, 'Emily', 'Stone', TO_DATE('2021-04-05', 'YYYY-MM-DD'), 48000, 1, 102, 0.04);
INSERT INTO Employees VALUES (108, 'Chris', 'Taylor', TO_DATE('2019-03-12', 'YYYY-MM-DD'), 53000, 1, 102, NULL);
INSERT INTO Employees VALUES (109, 'Sophia', 'Davis', TO_DATE('2020-10-22', 'YYYY-MM-DD'), 59000, 1, 102, 0.06);
INSERT INTO Employees VALUES (110, 'David', 'Miller', TO_DATE('2022-05-13', 'YYYY-MM-DD'), 48000, 1, 102, NULL);
INSERT INTO Employees VALUES (111, 'Ethan', 'Clark', TO_DATE('2022-09-17', 'YYYY-MM-DD'), 61000, 1, 102, 0.07);
INSERT INTO Employees VALUES (112, 'Sophia', 'Walker', TO_DATE('2021-07-11', 'YYYY-MM-DD'), 56000, 1, 102, NULL);
INSERT INTO Employees VALUES (113, 'Olivia', 'Allen', TO_DATE('2022-01-14', 'YYYY-MM-DD'), 53000, 1, 102, 0.05);
INSERT INTO Employees VALUES (114, 'Jackson', 'Lewis', TO_DATE('2021-06-10', 'YYYY-MM-DD'), 65000, 3, 105, 0.08);
INSERT INTO Employees VALUES (115, 'Charlotte', 'Adams', TO_DATE('2022-08-09', 'YYYY-MM-DD'), 62000, 3, 105, 0.09);
INSERT INTO Employees VALUES (116, 'Mason', 'Evans', TO_DATE('2023-02-10', 'YYYY-MM-DD'), 60000, 3, 105, 0.07);

-- New Data for Department 1 (Human Resources) and Department 2 (Sales)
INSERT INTO Employees VALUES (117, 'Andrew', 'Scott', TO_DATE('2020-03-05', 'YYYY-MM-DD'), 50000, 1, 102, 0.03);
INSERT INTO Employees VALUES (118, 'Ella', 'Martinez', TO_DATE('2021-09-22', 'YYYY-MM-DD'), 52000, 1, 102, 0.04);
INSERT INTO Employees VALUES (119, 'Liam', 'Roberts', TO_DATE('2020-11-01', 'YYYY-MM-DD'), 55000, 1, 102, 0.05);
INSERT INTO Employees VALUES (120, 'Sophia', 'Williams', TO_DATE('2022-04-13', 'YYYY-MM-DD'), 54000, 1, 102, NULL);
INSERT INTO Employees VALUES (121, 'Ava', 'Brown', TO_DATE('2021-12-20', 'YYYY-MM-DD'), 47000, 1, 102, 0.04);

-- More Employees for Department 2 (Sales) and Department 3 (IT)
INSERT INTO Employees VALUES (122, 'William', 'Anderson', TO_DATE('2020-05-18', 'YYYY-MM-DD'), 63000, 2, 105, 0.06);
INSERT INTO Employees VALUES (123, 'Mia', 'Rodriguez', TO_DATE('2019-07-14', 'YYYY-MM-DD'), 48000, 2, 105, 0.05);
INSERT INTO Employees VALUES (124, 'James', 'Carter', TO_DATE('2020-11-10', 'YYYY-MM-DD'), 57000, 2, 105, NULL);
INSERT INTO Employees VALUES (125, 'Lucas', 'Walker', TO_DATE('2022-06-19', 'YYYY-MM-DD'), 55000, 2, 105, 0.07);
INSERT INTO Employees VALUES (126, 'Henry', 'Lewis', TO_DATE('2023-01-11', 'YYYY-MM-DD'), 59000, 2, 105, 0.04);

-- More Employees for Department 3 (IT)
INSERT INTO Employees VALUES (127, 'Benjamin', 'Scott', TO_DATE('2021-05-20', 'YYYY-MM-DD'), 67000, 3, 105, 0.08);
INSERT INTO Employees VALUES (128, 'Amelia', 'Wright', TO_DATE('2021-10-25', 'YYYY-MM-DD'), 68000, 3, 105, 0.09);
INSERT INTO Employees VALUES (129, 'Daniel', 'Hill', TO_DATE('2022-07-18', 'YYYY-MM-DD'), 62000, 3, 105, 0.06);
INSERT INTO Employees VALUES (130, 'Grace', 'Baker', TO_DATE('2023-03-12', 'YYYY-MM-DD'), 60000, 3, 105, 0.07);

-- Additional Employees for Departments 4 (Marketing) and Department 5 (Finance)
INSERT INTO Employees VALUES (131, 'Victoria', 'Jones', TO_DATE('2021-08-02', 'YYYY-MM-DD'), 56000, 4, NULL, 0.05);
INSERT INTO Employees VALUES (132, 'Elijah', 'Morris', TO_DATE('2022-02-17', 'YYYY-MM-DD'), 54000, 4, NULL, 0.06);
INSERT INTO Employees VALUES (133, 'Isabella', 'King', TO_DATE('2021-11-08', 'YYYY-MM-DD'), 58000, 5, NULL, 0.05);
INSERT INTO Employees VALUES (134, 'Oliver', 'Harris', TO_DATE('2020-09-09', 'YYYY-MM-DD'), 60000, 5, NULL, 0.07);
INSERT INTO Employees VALUES (135, 'Charlotte', 'Young', TO_DATE('2019-06-23', 'YYYY-MM-DD'), 59000, 5, NULL, 0.06);


-- More data for Employees table with varying salary values



CREATE TABLE Departments (
    department_id   NUMBER PRIMARY KEY,
    department_name VARCHAR2(100),
    manager_id      NUMBER
);

-- Sample Data
INSERT INTO Departments VALUES (1, 'Human Resources', 102);
INSERT INTO Departments VALUES (2, 'Sales', 105);
INSERT INTO Departments VALUES (3, 'IT', 105);
INSERT INTO Departments VALUES (4, 'Marketing', NULL);

CREATE TABLE Projects (
    project_id     NUMBER PRIMARY KEY,
    project_name   VARCHAR2(100),
    start_date     DATE,
    end_date       DATE,
    department_id  NUMBER
);

-- Sample Data
INSERT INTO Projects VALUES (1001, 'HR Management System', TO_DATE('2021-03-15', 'YYYY-MM-DD'), TO_DATE('2022-03-15', 'YYYY-MM-DD'), 1);
INSERT INTO Projects VALUES (1002, 'Sales Dashboard', TO_DATE('2022-01-01', 'YYYY-MM-DD'), NULL, 2);
INSERT INTO Projects VALUES (1003, 'IT Infrastructure Upgrade', TO_DATE('2020-09-10', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 3);
INSERT INTO Projects VALUES (1004, 'Marketing Campaign Q4', TO_DATE('2022-10-01', 'YYYY-MM-DD'), TO_DATE('2022-12-31', 'YYYY-MM-DD'), 4);

CREATE TABLE Customers (
    customer_id     NUMBER PRIMARY KEY,
    customer_name   VARCHAR2(100),
    contact_number  VARCHAR2(15),
    email           VARCHAR2(100),
    join_date       DATE,
    balance         NUMBER(10, 2)
);

-- Sample Data
INSERT INTO Customers VALUES (201, 'Global Corp', '555-1234', 'contact@globalcorp.com', TO_DATE('2020-05-01', 'YYYY-MM-DD'), 5000.00);
INSERT INTO Customers VALUES (202, 'Tech Solutions', '555-5678', 'support@techsol.com', TO_DATE('2019-09-15', 'YYYY-MM-DD'), 2000.00);
INSERT INTO Customers VALUES (203, 'Innovative Designs', '555-9101', 'design@innovative.com', TO_DATE('2021-01-20', 'YYYY-MM-DD'), 1000.00);

CREATE TABLE Orders (
    order_id       NUMBER PRIMARY KEY,
    order_date     DATE,
    customer_id    NUMBER,
    total_amount   NUMBER(10, 2)
);

-- Sample Data
INSERT INTO Orders VALUES (301, TO_DATE('2023-06-10', 'YYYY-MM-DD'), 201, 1500.00);
INSERT INTO Orders VALUES (302, TO_DATE('2023-07-01', 'YYYY-MM-DD'), 202, 500.00);
INSERT INTO Orders VALUES (303, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 203, 1200.00);
INSERT INTO Orders VALUES (304, TO_DATE('2023-09-05', 'YYYY-MM-DD'), 201, 700.00);


CREATE TABLE Order_Items (
    order_id       NUMBER,
    product_id     NUMBER,
    quantity       NUMBER,
    unit_price     NUMBER(8, 2),
    PRIMARY KEY (order_id, product_id)
);

-- Sample Data
INSERT INTO Order_Items VALUES (301, 501, 2, 250.00);
INSERT INTO Order_Items VALUES (301, 502, 1, 1000.00);
INSERT INTO Order_Items VALUES (302, 503, 5, 100.00);
INSERT INTO Order_Items VALUES (303, 501, 3, 400.00);
INSERT INTO Order_Items VALUES (304, 504, 1, 700.00);

CREATE TABLE Productss (
    product_id     NUMBER PRIMARY KEY,
    product_name   VARCHAR2(100),
    price          NUMBER(8, 2),
    stock_quantity NUMBER
);

-- Sample Data
INSERT INTO Productss VALUES (501, 'Laptop', 500.00, 100);
INSERT INTO Productss VALUES (502, 'Smartphone', 1000.00, 50);
INSERT INTO Productss VALUES (503, 'Headphones', 100.00, 200);
INSERT INTO Productss VALUES (504, 'Monitor', 700.00, 75);


CREATE SEQUENCE emp_seq START WITH 106 INCREMENT BY 1;
CREATE SEQUENCE order_seq START WITH 305 INCREMENT BY 1;
CREATE SEQUENCE prod_seq START WITH 505 INCREMENT BY 1;




-- Write a query to find the employees who earn more than the average salary.
SELECT *
FROM EMPLOYEES 
WHERE SALARY > (
    SELECT AVG(SALARY) FROM EMPLOYEES
);

-- Find the department(s) where the maximum salary is greater than the overall average salary.
SELECT department_id FROM EMPLOYEES
GROUP BY department_id
HAVING MAX(SALARY)>(SELECT AVG(SALARY) FROM EMPLOYEES);

-- Retrieve the details of employees who work in a department where the total number of employees is greater than 10.


SELECT * FROM EMPLOYEES
WHERE department_id IN (SELECT Department_ID FROM EMPLOYEES
GROUP BY Department_ID
HAVING 10<COUNT(*));

SELECT COUNT(*) FROM EMPLOYEES
GROUP BY Department_ID;

-- Write a query to retrieve the names of employees along with their departments.

SELECT CONCAT(CONCAT(first_name,' '),last_name), department_name 
FROM EMPLOYEES, Departments
WHERE EMPLOYEES.Department_ID=Departments.Department_ID;




--Fetch all products that have a price greater than $500.

SELECT * FROM PRODUCTS
WHERE PRICE > 500;


-- Display the list of customers who have placed orders in the last 30 days.

SELECT customer_id FROM ORDERS
WHERE ORDER_DATE BETWEEN ADD_MONTHS(SYSDATE, -1) and SYSDATE;
-- alternative
SELECT DISTINCT c.customer_id, c.customer_name, c.contact_number, c.email
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_date >= SYSDATE - 30;

-- Use the ROUND() function to display the salary of all employees rounded to two decimal places.

SELECT ROUND(salary,2) from Employees;

-- Use NVL() to replace null commission values with 0 for employees.

SELECT NVL(commission_pct, 127) from employees;

-- Write a query to find the average salary in each department.

SELECT ROUND(AVG(salary)), department_name from Employees, Departments
where Employees. department_id=Departments.department_id
GROUP BY departments.department_id, department_name;

-- Retrieve the maximum and minimum order quantities for each product category.

SELECT MAX(QUANTITY),MIN(QUANTITY) FROM Order_Items
GROUP BY PRODUCT_ID;

-- Find the total number of employees hired in the year 2020.

SELECT COUNT(employee_id) FROM EMPLOYEES
WHERE TO_CHAR(hire_date,'YYYY') = '2020';


-- WDisplay a list of all customers along with the products they have ordered, 
-- including customers who haven't ordered anything

SELECT C.customer_name, P.product_name
FROM Customers C JOIN ORDERS O ON C.customer_id=O.customer_id
    JOIN Order_Items OO ON OO.ORDER_ID=O.ORDER_ID
    JOIN PRODUCTSS P ON P.PRODUCT_ID=OO.PRODUCT_ID
;

-- Use a self-join to find employees who have the same manager.

SELECT M.manager_id, E.employee_id
FROM EMPLOYEES E, EMPLOYEES M
WHERE M.EMPLOYEE_ID=E.manager_id;

-- Create a view that displays only the employee name, department, and salary.

CREATE OR REPLACE VIEW EMP ("NAME", "DEPARTMENT", "SALARY") AS
SELECT CONCAT(CONCAT(first_name,' '),last_name), department_name, salary
FROM EMPLOYEES, Departments
WHERE EMPLOYEES.Department_ID=Departments.Department_ID;

SELECT * FROM EMP;


-- Modify a view to include an additional column for employee job title.

CREATE OR REPLACE VIEW EMP ("NAME", "DEPARTMENT", "SALARY") AS
SELECT CONCAT(CONCAT(first_name,' '),last_name), department_name, salary
FROM EMPLOYEES, Departments
WHERE EMPLOYEES.Department_ID=Departments.Department_ID;

-- Update the salary of employees in department 10 by 5%

UPDATE EMPLOYEES SET SALARY=SALARY*1.05
WHERE Department_ID=2;

--Delete all employees who have not been assigned to any project.

DELETE FROM EMPLOYEES WHERE EMPLOYEE_ID NOT IN (SELECT EMPLOYEE_ID FROM PROJECTS);


CREATE or replace TRIGGER PALLOB_VONDO BEFORE iNSERT ON Employees
FOR EACH ROW
BEGIN
    raise_application_error (-20232,'pallob vondo');
END;
/
INSERT INTO Employees VALUES (999, 'Ava', 'Brown', TO_DATE('2021-12-20', 'YYYY-MM-DD'), 47000, 1, 102, 0.04);



INSERT INTO employees VALUES (106, 'Alex', 'Green', TO_DATE('2021-01-10', 'YYYY-MM-DD'), 55000, 1, 102, NULL);
