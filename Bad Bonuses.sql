SELECT employee_id,name 
from employee
WHERE employee_id not in 
(
  SELECT emp_id 
  from bonus
)
ORDER BY employee_id;