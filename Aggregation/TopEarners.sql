We define an employee's total earnings to be their monthly salary*months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.

Select max(salary*months) as max_sal, count(employee_id) as count_sal from Employee group by salary, months order by max_sal desc limit 1

