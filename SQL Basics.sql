-- BASICS OF SQL


-- Q1:- What is SQL and why do we use it?
-- Ans:- SQL stands for structured query languae. SQL is used to interact with database.

--Q2:- What is database?
--Ans:- It is an organised data store where we can access, manipulate and modify data effeciently.

--Q3:- What is SQL server?
--Ans:- SQL server is a database management software from microsoft that manages all the associated database and security.
     -- The lates version is 2022.

--Q4:- What is instance in SQL server?
--Ans:- MS SQL server has a feature called named instances.This feature lets you run multiple databases on the same host.
     -- Every instance is a complete SQL server installation along with its own copy of server files, database engine,
	 -- Database users and credentials. One instance can be default instance.

--Q5:- What are system databases?
--Ans:-System DB are the databases that are installed during the SQL server installation.
     -- System databases consists of master,MSDB, TempDB and model.
	 -- These databases will maintain and provide more information about the SQL server system like logins, databases,
	 -- Linked servers, jobs, schedules, report, report data, source etc.

-- Q6:- How to create database using script?
-- Ans:- Type --> create database databasename(Could be anything) then click on execute. For example below
          Create database testDB

--Q7:- How to drop database using script?
--Ans:- Type--> Drop database databasename then click on execute. For example below.
         Drop database testDB