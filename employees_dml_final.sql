--1: Добавить нового сотрудника
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (999901, '1992-05-15', 'Nikolay', 'Ivanov', 'M', '2025-06-25');

SELECT * FROM employees WHERE emp_no = 999901;

--2: Обновить зарплату сотрудника с ID = 101 на 60000
SELECT * FROM employees WHERE emp_no = 101;
SELECT * FROM salaries WHERE emp_no = 101;

INSERT INTO employees VALUES (101, '1990-01-01', 'Ivan', 'Zaharov', 'M', '2025-06-25');
INSERT INTO salaries VALUES (101, 50000, '2024-01-01', '9999-01-01');

UPDATE salaries SET salary = 60000 WHERE emp_no = 101;

SELECT * FROM salaries WHERE emp_no = 101;

--3: Удалить сотрудника с ID = 202
SELECT * FROM employees WHERE emp_no = 202;
DELETE FROM employees WHERE emp_no = 202;
SELECT * FROM employees WHERE emp_no = 202;

--4: Добавить зарплату сотруднику с ID = 103
SELECT * FROM employees WHERE emp_no = 103;

INSERT INTO employees VALUES (103, '1993-03-03', 'Alex', 'Smith', 'M', '2025-06-25');
INSERT INTO salaries VALUES (103, 55000, '1993-03-03', '2025-06-25');

SELECT * FROM salaries WHERE emp_no = 103 ORDER BY from_date DESC;

--5: Обновить должность сотрудника с ID = 104 на 'Senior Developer'
SELECT * FROM employees WHERE emp_no = 104;

INSERT INTO employees VALUES (104, '1994-04-04', 'John', 'Doe', 'M', '2025-06-25');
SELECT * FROM titles WHERE emp_no = 104;

INSERT INTO titles VALUES (104, 'Developer', '2024-01-01', '9999-01-01');
UPDATE titles SET title = 'Senior Developer' WHERE emp_no = 104;

SELECT * FROM titles WHERE emp_no = 104;

--6: Удалить все записи о зарплатах для сотрудника с ID = 105
SELECT * FROM salaries WHERE emp_no = 105;

INSERT INTO employees VALUES (105, '1990-01-01', 'Temp', 'Worker', 'F', '2025-06-25');
INSERT INTO salaries VALUES (105, 50000, '2024-01-01', '9999-01-01');

DELETE FROM salaries WHERE emp_no = 105;
SELECT * FROM salaries WHERE emp_no = 105;

--7: Добавить новый департамент в таблицу departments
SELECT * FROM departments WHERE dept_no = 'd011';

INSERT INTO departments (dept_no, dept_name)
VALUES ('d011', 'New Product Development');

SELECT * FROM departments WHERE dept_no = 'd011';

--8: Обновить имя департамента с ID = 3 на 'Marketing'
SELECT * FROM departments WHERE dept_no = 'd003';

UPDATE departments SET dept_name = 'Marketing1'
WHERE dept_no = 'd003';

SELECT * FROM departments WHERE dept_no = 'd003';

--9: Удалить департамент с ID = 4, если в нём нет сотрудников
SELECT * FROM dept_emp WHERE dept_no = 'd004';

DELETE FROM departments
WHERE dept_no = 'd004'
AND NOT EXISTS (
  SELECT 1 FROM dept_emp WHERE dept_no = 'd004'
);

SELECT * FROM departments WHERE dept_no = 'd004';

--10: Добавить нескольких сотрудников одним запросом
SELECT * FROM employees WHERE emp_no IN (301, 302, 303);

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES 
  (301, '1990-10-10', 'Alice', 'Johnson', 'F', '2025-06-25'),
  (302, '1992-02-02', 'Bob', 'Miller', 'M', '2025-06-25'),
  (303, '1995-05-05', 'Charlie', 'Smith', 'M', '2025-06-25');

SELECT * FROM employees WHERE emp_no IN (301, 302, 303);
