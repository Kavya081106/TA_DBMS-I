---Implementation of the ALTER and RENAME commands in SQL

CREATE TABLE Student (
    Enrollment_No VARCHAR(20),
    Name VARCHAR(25),
    CPI DECIMAL(5,2),
    Birthdate DATETIME
);

--Part – A 

--1. Add two more columns City VARCHAR (20) NULL and Backlog INT NOT NULL. 
ALTER TABLE STUDENT
ADD CITY VARCHAR(20) NULL,
Backlog INT NOT NULL

--2. Change the size of NAME column of student from VARCHAR (25) to VARCHAR (35). 
ALTER TABLE STUDENT
ALTER COLUMN NAME VARCHAR(35)

--3. Change the data type DECIMAL to INT in CPI Column. 
ALTER TABLE STUDENT
ALTER COLUMN CPI INT

--4. Rename Column Enrollment No to ENO. 
EXEC SP_RENAME 'STUDENT.Enrollment_No','ENO'
SELECT * FROM Student

--5. Delete Column City from the STUDENT table. 
ALTER TABLE STUDENT
DROP COLUMN CITY

--6. Change name of table STUDENT to STUDENT_MASTER. 
SP_RENAME 'STUDENT','STUDENT_MASTER'

--Part – B 
--7. Remove Column Backlog from the table. 
ALTER TABLE STUDENT_MASTER
DROP COLUMN BACKLOG

--8. Change Constraint of Name Column from NULL to NOT NULL. 
ALTER TABLE STUDENT_MASTER
ALTER COLUMN NAME VARCHAR(35) NOT NULL

--Part – C 
--9. Rename Column Birthdate to BDate. 
SP_RENAME 'STUDENT_MASTER.Birthdate','BDate'

--10. Change the datatype of ENO Column from VARCHAR (20) to VARCHAR (12).
ALTER TABLE STUDENT_MASTER
ALTER COLUMN ENO VARCHAR(12)