-- ЗАДАНИЕ 1: Добавить нового сотрудника, если его нет
-- Проверка:
SELECT * FROM employees WHERE emp_no = 999901;

-- Добавление:
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (999901, '1990-01-01', 'Ivan', 'Ivanov', 'M', '2025-06-25');

-- Проверка:
SELECT * FROM employees WHERE emp_no = 999901;

-- ЗАДАНИЕ 2: Обновить зарплату сотрудника с emp_no = 101 на 60000
-- Проверка:
SELECT * FROM employees WHERE emp_no = 101;
SELECT * FROM salaries WHERE emp_no = 101;

-- Если сотрудника нет:
INSERT INTO employees VALUES (101, '1991-01-01', 'Test', 'User', 'M', '2025-06-25');

-- Если зарплаты нет:
INSERT INTO salaries VALUES (101, 50000, '2024-01-01', '9999-01-01');

-- Обновление:
UPDATE salaries SET salary = 60000 WHERE emp_no = 101;

-- Проверка:
SELECT * FROM salaries WHERE emp_no = 101;

-- ЗАДАНИЕ 3: Удалить сотрудника с emp_no = 999901
DELETE FROM employees WHERE emp_no = 999901;
SELECT * FROM employees WHERE emp_no = 999901;

-- ЗАДАНИЕ 4: Добавить зарплату сотруднику с emp_no = 103
SELECT * FROM employees WHERE emp_no = 103;
INSERT INTO employees VALUES (103, '1993-03-03', 'Alex', 'Smith', 'M', '2025-06-25');
INSERT INTO salaries VALUES (103, 55000, '2025-06-25', '9999-01-01');
SELECT * FROM salaries WHERE emp_no = 103 ORDER BY from_date DESC;

-- ЗАДАНИЕ 5: Обновить должность сотрудника с emp_no = 104
SELECT * FROM employees WHERE emp_no = 104;
INSERT INTO employees VALUES (104, '1994-04-04', 'John', 'Doe', 'M', '2025-06-25');
SELECT * FROM titles WHERE emp_no = 104;
INSERT INTO titles VALUES (104, 'Engineer', '2024-01-01', '9999-01-01');
UPDATE titles SET title = 'Senior Engineer' WHERE emp_no = 104;
SELECT * FROM titles WHERE emp_no = 104;

-- ЗАДАНИЕ 6: Удалить все зарплаты сотрудника с emp_no = 105
SELECT * FROM salaries WHERE emp_no = 105;
INSERT INTO employees VALUES (105, '1990-01-01', 'Temp', 'Worker', 'F', '2025-06-25');
INSERT INTO salaries VALUES (105, 50000, '2024-01-01', '9999-01-01');
DELETE FROM salaries WHERE emp_no = 105;
SELECT * FROM salaries WHERE emp_no = 105;

-- ЗАДАНИЕ 7: Добавить новый департамент d010
SELECT * FROM departments WHERE dept_no = 'd010';
INSERT INTO departments (dept_no, dept_name) VALUES ('d010', 'Research and Development');

-- ЗАДАНИЕ 8: Обновить имя департамента d005
SELECT * FROM departments WHERE dept_no = 'd005';
UPDATE departments SET dept_name = 'Marketing' WHERE dept_no = 'd005';
SELECT * FROM departments WHERE dept_no = 'd005';

-- ЗАДАНИЕ 9: Удалить департамент d006, если в нём нет сотрудников
SELECT * FROM dept_emp WHERE dept_no = 'd006';
DELETE FROM departments
WHERE dept_no = 'd006'
AND NOT EXISTS (SELECT 1 FROM dept_emp WHERE dept_no = 'd006');

-- ЗАДАНИЕ 10: Добавить нескольких сотрудников
SELECT * FROM employees WHERE emp_no IN (999902, 999903, 999904);
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES 
  (999902, '1992-02-02', 'Petr', 'Petrov', 'M', '2025-06-25'),
  (999903, '1988-03-03', 'Anna', 'Kuznetsova', 'F', '2025-06-25'),
  (999904, '1995-04-04', 'Sergey', 'Sidorov', 'M', '2025-06-25');
