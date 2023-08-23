-- TYPES OF JOIN OPERATION

-- First we need to understand what is join operation?
--Ans:- Join operators are used to join the data from multiple tables.

--Q1:- What are the types of Join operators?
--Ans:- There are 4 types of Join operators
-- 1) Inner join
-- 2) Left Join
-- 3) Right Join
-- 4) Full Join

--1) Inner Join- In Inner join only common data available in multiple tales will be reflected.

--2) Left Join- This join returns all the rows of the table on the left side of the join 
-- and matches rows for the table on the right side of the join.
-- For the rows for which there is no matching row on the right side, the result-set will contain null.

--3) Right Join- This join returns all the rows of the table on the right side of the join
-- and matching rows for the table on the left side of the join
-- For the rows for which there is no matching row on the left side, the result-set will contain null.

--4) Full Join- FULL JOIN creates the result-set by combining results of both LEFT JOIN and RIGHT JOIN.
---  The result-set will contain all the rows from both tables.

-- Let's understand with an example. I have taken two tables which are mentioned below.

select * from borrowerdetails

Borrowerid    BorrowerName   DepartmentID    Borroweryear  Borrowercontact       Borroweraddress
   1	         Arpit	        2	          2008	        10001	             Dehradun
   2	         Sunit	        4	          2009	        125678	             Roorkee
   3	         Aditi	        1	          2018	        12897	             Dehradun
   4	         Manoj	        3             2016	        128967	             Haridwar
   5	         Gauri	        7	          2023	        89746	             Chopta
   6	         Priya	        9	          2022	        43557	             Prayag


--Another table
select* from departmentdetails



DepartmentID        DepartmentName
      1	                 EE
      2	                 CS
      3	                 EC
      4	                 IT
      5	                 BIO
      6	                 MECH
      7	                 Civil
      8	                 Aero
      9	                 Chem

-- In the above two tables the departmentId is common in both the tables and now we can apply joins.
-- Let's understand with an example of inner join first.

--Task:- Find out borrowerid, borrowername, borroweraddress, departmentname using inner join
--Ans- Please find below the query.

select borrowerID, borrowername, borroweraddress, departmentname from borrowerdetails inner join departmentdetails
 On borrowerdetails.departmentid = departmentdetails.DepartmentID
 
 --Task:- Find out borrowerid, borrowername, borroweraddress, departmentname using left join
 --Ans- Please find below the query

 select borrowerID, borrowername, borroweraddress, departmentname from borrowerdetails left join departmentdetails
 On borrowerdetails.departmentid = departmentdetails.DepartmentID
 
 --Task:- Find out borrowerid, borrowername, borroweraddress, departmentname using right join
 --Ans:- Please find below the query
 select borrowerID, borrowername, borroweraddress, departmentname from borrowerdetails right join departmentdetails
 On borrowerdetails.departmentid = departmentdetails.DepartmentID

 --Task:- Find out borrowerid, borrowername, borroweraddress, departmentname using full join
 --Ans:- Please find below the query

  select borrowerID, borrowername, borroweraddress, departmentname from borrowerdetails full join departmentdetails
 On borrowerdetails.departmentid = departmentdetails.DepartmentID


 Thank You!!
