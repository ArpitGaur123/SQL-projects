--DATA RETRIEVAL AND FILTERING

--Q1:- what is data retrieval?
--Ans:-  In SQL, to retrieve data stored in our tables, we use the SELECT statement.
---> The result of this statement is always in the form of a table that we can view with our database client software
---> We can perform filtering using several clause like Where clause, In clause, AND/OR clause, Group By etc.

---> Let's understand with an example. I will take one table called as employeedetails

Select * from employeedetails

ID  Name    Salary  Age     Department
1	Raj	    16000	22	    operations
2	Avi	    22000	24	    Customersupport
3	Ria	    20000	23	    ITsupport
4	Pia	    25000	26	    Software
5	Debu	40000	30	    Operations
6	Adi	    50000	32	    ITsupport
7	Dvij	70000	28	    software
8	Remo	18000	25	    customersupport

--Q1:- Find out number of employees from above table where department is customer support.
--Ans- Please find below the query.

Select count(ID) as numberofemployees from employeedetails where department = 'customersupport'

--Q2:- Find out the average salary of each department.
--Ans:- Please find below the query.
select department, avg(salary) as avgsalary from employeedetails group by Department

--Q3:- Find out the names of an employee from operations and ITsupport department
--Ans:- Please find below the query.
select name, department from employeedetails where department In ('operations', 'ITsupport')

--Q4:-Find the number of employees from different department whose salaries are more then 20000.
--Ans- Please find below the query.
 select name, department, salary from employeedetails where salary > 20000 

 --Q5:- Find the employeedetails where name ends with a.
 --Ans:- Please find below the query
 select * from employeedetails where name like '%a'


 --Conclusion- So we have used different clause in order to filter the data like where clause, In clause, like clause, aggregate functions etc.