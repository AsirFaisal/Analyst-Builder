#Combine Two tables
#Join these two tables together to return the first name, last name, and state for each person.

#If there is no matching employee in the location table the state should be Null for that person.

#Order the output alphabetically on their first names.

SELECT e.first_name,e.last_name,e1.state
from employee_name e 
LEFT JOIN employee_location e1 on  e1.employee_id = e.person_id
ORDER BY first_name