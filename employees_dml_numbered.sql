--1
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (202, '1992-05-15', 'Nikolay', 'Ivanov', 'M', '2025-06-25');

--2
INSERT INTO employees VALUES (101, '1990-01-01', 'Test', 'User', 'M', '2025-06-25');
INSERT INTO salaries VALUES (101, 50000, '2024-01-01', '9999-01-01');
UPDATE salaries SET salary = 60000 WHERE emp_no = 101;

--3
DELETE FROM employees WHERE emp_no = 202;

--4
INSERT INTO employees VALUES (103, '1993-03-03', 'Alex', 'Smith', 'M', '2025-06-25');
INSERT INTO salaries VALUES (103, 55000, '2025-06-25', '9999-01-01');

--5
INSERT INTO employees VALUES (104, '1994-04-04', 'John', 'Doe', 'M', '2025-06-25');
INSERT INTO titles VALUES (104, 'Developer', '2024-01-01', '9999-01-01');
UPDATE titles SET title = 'Senior Developer' WHERE emp_no = 104;

--6
INSERT INTO employees VALUES (105, '1990-01-01', 'Temp', 'Worker', 'F', '2025-06-25');
INSERT INTO salaries VALUES (105, 50000, '2024-01-01', '9999-01-01');
DELETE FROM salaries WHERE emp_no = 105;

--7
INSERT INTO departments (dept_no, dept_name)
VALUES ('d011', 'New Product Development');

--8
UPDATE departments SET dept_name = 'Marketing'
WHERE dept_no = 'd003';

--9
DELETE FROM departments
WHERE dept_no = 'd004'
AND NOT EXISTS (SELECT 1 FROM dept_emp WHERE dept_no = 'd004');

--10
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES 
  (301, '1990-10-10', 'Alice', 'Johnson', 'F', '2025-06-25'),
  (302, '1992-02-02', 'Bob', 'Miller', 'M', '2025-06-25'),
  (303, '1995-05-05', 'Charlie', 'Smith', 'M', '2025-06-25');
