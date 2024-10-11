WITH lowest_salary AS
  (SELECT employee_id,
  department,
  salary,
  ROUND(salary*1.15,2) as new_salary
  from employee_raise
  where SALARY = (
  SELECT MIN(salary) 
  from employee_raise as er
  WHERE er.department = employee_raise.department
  )
  )
SELECT employee_id,department,salary as old_salary,new_salary 
from lowest_salary
ORDER BY new_salary DESC;
  
  