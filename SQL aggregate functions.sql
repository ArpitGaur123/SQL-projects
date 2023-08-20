 -- SQL AGGREGATE FUNCTIONS

 --Q1: What is aggregate function in SQL?
 --Ans: An aggregate function in SQL performs a calculation on multiple values and returns a single value.
   --: SQL provides many aggregate functions that include avg, count, sum, min,max etc.
   
   --AVG()- Returns the average value.
   --Count()- Returns the number of rows.
   --Max()- Returns the largest Value.
   --Min()- Returns the smallest value.
   --Sum()- Return the sum.
   --Len()- Returns the length of a text field.
   --Round()- Rounds a numeric field to the number of decimals specified.

  -- So let's understand with an example.
  -- Now we need to find the average salary of an employee from operations department.
  -- So first we will select table and the query is mentioned below and execute it.

   select * from employeedetails

   select avg(salary) as averagesalary from employeedetails where department = 'operations'

   -- Similary if we need to find out average salary and average age of an employee from operation department.

   select avg(salary) as averagesalary, avg(age) as averageage from employeedetails where department = 'operations'

   -- Similary if we want to find the average salary from two deparment which is operations and ITsupport

  select avg(salary) as averagesalary, count(ID) as numberofemployees from employeedetails where department In ('operations', 'ITsupport')

  --Q- Find the minimum salary from employeetable where department is ITsupport
  --Ans:- Please find below the quert
  select min(salary) as minimumsalary from employeedetails where department = 'ITsupport'
  
  --Q- How can we find the name length of an employee from operations department
  -- Ans- Please find below the query
  select Len(Name) as name, name from employeedetails where department = 'operations'