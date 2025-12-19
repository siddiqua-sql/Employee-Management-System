
-- TABLE CREATION
CREATE TABLE employee (
    emp_id INTEGER PRIMARY KEY,
    emp_name VARCHAR(20) NOT NULL,
    job_title VARCHAR(20),
    department VARCHAR(20),
    salary DECIMAL(10,2),
    joining_date DATE
);

-- INSERT DATA
INSERT INTO employee values
(1, 'Ayesha Khan', 'Software Engineer', 'IT', 55000, '2023-06-01'),
(2, 'Himesh Verma', 'HR Manager', 'HR', 45000, '2022-03-15'),
(3, 'Neha Sharma', 'Accountant', 'Finance', 40000, '2021-09-10'),
(4, 'Arjun Patel', 'Team Lead', 'IT', 70000, '2020-01-20');

-- READ OPERATIONS (SELECT statement)
SELECT * FROM employee;
SELECT emp_name, department, salary FROM employee;
SELECT * FROM employee WHERE department = 'IT';
SELECT emp_name, salary FROM employee WHERE salary > 50000;
SELECT * FROM employee ORDER BY salary DESC;

-- UPDATE OPERATIONS
UPDATE employee SET salary = 60000 WHERE emp_id = 1;
UPDATE employee SET job_title = 'Senior Software Engineer' WHERE emp_id = 1;
UPDATE employee SET department = 'Management' WHERE emp_id = 4;

-- DELETE OPERATION
DELETE FROM employee WHERE emp_id = 2;

-- AGGREGATE FUNCTIONS
SELECT COUNT(*) AS total_employees FROM employee;
SELECT AVG(salary) AS average_salary FROM employee;
SELECT MAX(salary) AS highest_salary FROM employee;
SELECT MIN(salary) AS lowest_salary FROM employee;

-- GROUP BY
SELECT department, COUNT(emp_id) AS emp_count
FROM employee
GROUP BY department;

-- CONSTRAINT OPERATIONS
ALTER TABLE employee ADD COLUMN email VARCHAR(20);
 
-- INSERT WITH NEW COLUMN
UPDATE employee SET email = 'ayesha@gmail.com' WHERE emp_id = 1;
UPDATE employee SET email = 'neha@gmail.com' WHERE emp_id = 3;
UPDATE employee SET email = 'arjun@gmail.com' WHERE emp_id = 4;

-- DROP VIEW
DROP VIEW employee_view;

-- TRUNCATE TABLE
TRUNCATE TABLE employee;

-- DROP TABLE
DROP TABLE employee;