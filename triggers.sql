create triggers before_salary_update
before update on employes
for each row
set new.emp_annual_income=new.emp_salary*12


CREATE TRIGGER after_insert_emp
AFTER INSERT ON employes
FOR EACH ROW
UPDATE expenses
SET expenses_amount = expenses_amount + NEW.annual_income
WHERE expenses_name = "salaries"

CREATE TRIGGER after_insert_emp
AFTER INSERT ON employes
FOR EACH ROW
UPDATE expenses
SET expenses_amount = expenses_amount + NEW.annual_income
WHERE expenses_name = "salaries"
