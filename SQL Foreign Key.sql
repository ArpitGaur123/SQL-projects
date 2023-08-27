--- FOREIGN KEY

--- The FOREIGN KEY constraint is a key used to link two tables together.
--- A FOREIGN KEY is a field (or collection of fields) in one table that refers to the PRIMARY KEY in another table.
--- Foregin Key can be created only if the data type is same in both tables. Let's understand with an example.

-- Let's select two tables. First one is bookdetails table and second one is subjectdetails table



select *from bookdetails

SubjectID     SubjectName      Author   Price  Edition       BookID
    1	      AdvanceMaths	     Ria	1089	  6	           4
    2	         Physics	     Dvij	1200	  3	           2
    3	         English	     Debu	1011	  5	           2
    4	         Science	     Deb	1045	  6	           3
    5	        Socialscience	 Jia	1121	  6	           6
    6	           Hindi	     Ram	700	      4	           1                


select * from subjectdetails


SubjectID        Subjectname
    1	          Chemistry
    4	          English
    5	          Hindi
    3	          Maths
    2	          Physics
    6	          Socialscience     


-- Let's create Primary Key in the first table
 alter table bookdetails
ADD constraint PK_bookdetails_subjectID Primary Key (SubjectID)


-- Let's create Primary Key in the second table
alter table subjectdetails
ADD constraint PK_subjectdetails_subjectname Primary Key (Subjectname);


-- If we see SubjectID is common in both the tables hence we can create Foregin Key in the second table.
--Point to remember is that SubjectID data type is same in both the tables which is Integer type.

-- How to create Foreign Key using Syntax?
/*Ans:-*/ Alter table table name with check
          Add constraint FK_Sourcetablename_targettablename_columnname Foreign Key(column Name)

-- Example is given below with 

alter table subjectdetails with check
Add constraint FK_subjectdetails_bookdetails_subjectID Foreign Key (SubjectID)
References bookdetails(SubjectID)

    