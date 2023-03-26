

/*
SIMPLE BIT LOGIC
*/

SELECT employee_id , salary * ( employee_id%2 ) * ( name not like 'M%') as bonus
FROM employees
ORDER BY employee_id;


/*
CASE STATEMENT 
*/

SELECT employee_id,
case when employee_id%2=1 AND name NOT LIKE 'M%' then salary
ELSE 0
END AS bonus 
FROM Employees
ORDER BY employee_id
