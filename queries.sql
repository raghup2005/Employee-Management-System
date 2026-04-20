# highest salary
SELECT * FROM employes
ORDER BY emp_salary DESC
LIMIT 1;

# average salary
SELECT emp_name
FROM employes
WHERE emp_salary > (SELECT AVG(emp_salary) FROM employes);


SELECT refferal_id, COUNT(*)
FROM employes
GROUP BY refferal_id;

SELECT * FROM expenses;


SELECT emp_name, emp_salary,
ROW_NUMBER() OVER (ORDER BY emp_salary DESC) AS row_num
FROM employes;

SELECT emp_name, emp_salary,
RANK() OVER (ORDER BY emp_salary DESC) AS rank_num
FROM employes;

SELECT emp_name, emp_salary,
RANK() OVER (ORDER BY emp_salary DESC) AS rank_num
FROM employes;

SELECT *
FROM (
    SELECT emp_name, emp_salary,
    DENSE_RANK() OVER (ORDER BY emp_salary DESC) AS rnk
    FROM employes
) 
WHERE rnk <= 2;