# Write your MySQL query statement below
Select e.Name as Employee
from Employee as e
Join Employee as m on e.ManagerId =m.Id
where e.Salary > m.Salary


