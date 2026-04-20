CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


ALTER TABLE employes
ADD dept_id INT,
ADD FOREIGN KEY (dept_id) REFERENCES departments(dept_id);


CREATE TABLE bonuses (
    bonus_id INT PRIMARY KEY,
    emp_id INT,
    bonus_amount INT,
    bonus_date DATE,
    FOREIGN KEY (emp_id) REFERENCES employes(emp_id)
);

INSERT INTO departments VALUES
(1, 'Engineering'),
(2, 'HR'),
(3, 'Sales');

UPDATE employes SET dept_id = 1 WHERE emp_id = 1;
UPDATE employes SET dept_id = 2 WHERE emp_id = 2;
UPDATE employes SET dept_id = 1 WHERE emp_id = 3;

INSERT INTO bonuses VALUES
(1, 1, 5000, '2024-01-10'),
(2, 2, 3000, '2024-02-15'),
(3, 1, 2000, '2024-03-20');

SELECT e.emp_name, d.dept_name
FROM employes e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

SELECT e.emp_name, b.bonus_amount
FROM employes e
INNER JOIN bonuses b
ON e.emp_id = b.emp_id;


SELECT e.emp_name,
       e.emp_salary,
       IFNULL(SUM(b.bonus_amount), 0) AS total_bonus
FROM employes e
LEFT JOIN bonuses b ON e.emp_id = b.emp_id
GROUP BY e.emp_id;