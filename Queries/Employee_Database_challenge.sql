-- ## The Number of Retiring Employees by Title

-- Retrieve Employees table
SELECT emp_no, first_name, last_name 
FROM employees

-- Retrieve Titles table
SELECT title, from_date, to_date  
FROM titles

-- Create a Retirement Titles table
SELECT 	e.emp_no,
		e.first_name, 
		e.last_name,
		t.title, 
		t.from_date, 
		t.to_date  
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
	ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no

-- The Unique Titles table
SELECT DISTINCT ON (emp_no) emp_no,
							first_name,
							last_name,
							title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;


-- Retrieve the number of employees by their most recent job title
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Number of all retiring employees
SELECT COUNT(first_name) FROM unique_titles;



-- ## The Employees Eligible for the Mentorship Program

-- Retrieve Employees table
SELECT emp_no, first_name, last_name, birth_date 
FROM employees

-- Retrieve Department Employee table
SELECT from_date, to_date  
FROM dept_emp

-- Retrieve Titles table
SELECT title  
FROM titles


-- Create a Mentorship Eligibilty table
SELECT DISTINCT ON (emp_no) e.emp_no,
							e.first_name, 
							e.last_name,
							e.birth_date,
							de.from_date,
							de.to_date,
							t.title
INTO mentorship_eligibilty
FROM employees as e
	INNER JOIN dept_emp as de
		ON e.emp_no = de.emp_no
	INNER JOIN titles as t
		ON e.emp_no = t.emp_no
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;


-- Number of Qualified Mentor
SELECT COUNT(first_name)
FROM mentorship_eligibilty;

-- Number of current retiring employees
SELECT COUNT(first_name)
FROM employees AS e
INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (de.to_date = '9999-01-01');












 

 


