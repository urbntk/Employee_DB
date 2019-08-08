SELECT e.emp_no, e.last_name,
	   e.first_name, e.gender, s.salary
FROM employees as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no
LIMIT 10;



SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date < '1987-01-01'
ORDER BY hire_date DESC;


SELECT dm.dept_no, d.dept_name, dm.emp_no,
	   e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager AS dm
INNER JOIN departments AS d
ON (dm.dept_no = d.dept_no)
	INNER JOIN employees AS e
	ON (dm.emp_no = e.emp_no);


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d
	ON (de.dept_no = d.dept_no);


SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name
LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d
	ON (de.dept_no = d.dept_no)
	WHERE d.dept_name = 'Sales';


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d
	ON (de.dept_no = d.dept_no)
	WHERE d.dept_name = 'Sales'
	OR d.dept_name = 'Development';


SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


SELECT *
FROM employees
WHERE emp_no = 499942;
