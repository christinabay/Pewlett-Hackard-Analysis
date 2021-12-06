-- DELIVERABLE 1
-- Create retirement_titles table
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
JOIN titles as t 
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no
;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

-- Retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- DELIVERABLE 2
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, d.from_date, d.to_date, t.title
INTO mentorship_eligibility
FROM employees as e
JOIN dept_emp as d 
ON e.emp_no = d.emp_no
JOIN titles as t
ON t.emp_no = d.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31') and (t.to_date = '9999-01-01')
ORDER BY e.emp_no ASC, t.to_date
;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- DELIVERABLE 3

SELECT COUNT(emp_no) mentorship_eligibility
FROM mentorship_eligibility
;

SELECT COUNT (emp_no) unique_titles 
FROM unique_titles
;
