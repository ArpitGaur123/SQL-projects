-- NO DUPLICITY

--Q1:- What is Duplicity
--Ans- As the name states duplicity means duplicate. 
--> Duplicates means that the same record is seen multiple times in a SQL Server database table.

-- Q2:- How can we remove Duplicate values?
--Ans:- By using Distinct claus, Group By clause and inner join we can remove duplicity. Let's understand with an example.

-- Let's take one data table in which we can apply distinct/group BY clause.

Select * from borrowerdetails and table is reflected below. This table is for example purpose

1	Arpit	2	2008	10001	Dehradun
2	Sunit	4	2009	125678	Roorkee
3	Aditi	1	2018	12897	Dehradun
4	Manoj	3	2016	128967	Haridwar
5	Gauri	7	2023	89746	Chopta
6	Priya	9	2022	43557	Prayag

-- In this table I have borrowerID, borrowerName, DepartmentID,BorrowerYear,Borrowercontact,Borroweraddress

--Q3- Find out distinct city name where departmentID is 1 and 2 from borrowerdetails table.
-- Ans- Please find below the query.

select distinct borroweraddress, departmentID from borrowerdetails where departmentID in (1,2)


--Q4:- Find the number of students from each city using borrowerdetails table.
--Ans- Please find below the query.

Select borroweraddress, count(BorrowerID) as numberofstudents from borrowerdetails group by borroweraddress


