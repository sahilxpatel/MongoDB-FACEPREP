show databases;

use practise;

select * from worker where department = 'Admin' order by department desc;

select * from worker where department = 'Admin' order by department desc limit 3;

select department, count(DEPARTMENT) as total_employees  from worker 
where department = 'HR' or DEPARTMENT='account' group by department;

select department, count(department) as total_employees from worker
group by department
order by total_employees desc Limit 2;

(
  SELECT department, COUNT(department) AS total_employees
  FROM worker
  GROUP BY department
  ORDER BY total_employees ASC
  LIMIT 1
)

UNION ALL

(
  SELECT department, COUNT(department) AS total_employees
  FROM worker
  GROUP BY department
  ORDER BY total_employees DESC
  LIMIT 1
);

