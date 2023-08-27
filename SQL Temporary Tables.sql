-- TEMPORARY TABLES

--Q1:- what is temporary table?
--Ans:- Temporary table also called as Temp table. We can create Temp table only in Temp DB. Temp DB is a system DB.
------>  Temp table is a session/wizard specific. Once you close the session/Wizard then Temp DB will be deleted from SQL server.
------> Temp table can't be operational in another session.
------> We can create Temp table using # so for example create table #temp

--Q2:- What is the use of Temp table?
--Ans:- To hold some query output or some intermediate output in the temp table
----->Temp DB is session specific not DB specific.
-----> Temporary table can act like physical tables in many ways, which gives us more flexibility such as we can create constraints, Indexes.

create table #temp
(
ID int not null,
Name Varchar(64) not null,
Age Varchar(64) not null
)

Insert into #temp
Values
(1,'Ajay',32)
     

-- GLOBAL TEMPORARY TABLE

-- Global Temporary table is not session specific. It is not DB specific. It is accessible from any DB.
-- Scope of this table is across sessions/database till the originating session is open.
-- Global temporary table starts with ##temp

create table ##temp
(
ID int not null,
Name Varchar(64) not null,
Age Varchar(64) not null
)

Insert into ##temp
Values
(1,'Ajay',32)
     