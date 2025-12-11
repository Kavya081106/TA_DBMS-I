---LAB 5

--Part – A 
--RECORDS UPDATION (UPDATE COMMAND)
--1. Update deposit amount of all customers from 3000 to 5000. 
UPDATE DEPOSIT
SET AMOUNT = 5000
WHERE AMOUNT = 3000

SELECT * FROM DEPOSIT
--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)  
UPDATE BORROW
SET BNAME = 'C.G. ROAD'
WHERE CNAME = 'ANIL' AND BNAME = 'VRCE'

--3. Update Account No of SANDIP to 111 & Amount to 5000.  
UPDATE DEPOSIT
SET ACTNO = 111, AMOUNT = 5000
WHERE CNAME = 'SANDIP'

--4. Give 10% Increment in Loan Amount. 
UPDATE BORROW
SET AMOUNT = AMOUNT+0.1*AMOUNT

--5. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. 
UPDATE DEPOSIT
SET AMOUNT = 5000
WHERE ACTNO BETWEEN 103 AND 107

--Part – B 

--6. Update amount of loan no 321 to NULL. 
UPDATE BORROW
SET AMOUNT = NULL
WHERE LOANNO = 321

--7. Change Loan number from 201 to 401 & also change branch name from VRCE to AJNI. 
UPDATE BORROW
SET LOANNO = 401,BNAME = 'AJNI'
WHERE LOANNO = 201 AND BNAME = 'VRCE' 

--8. Modify customer name ANIL to ANIL JAIN. 
UPDATE CUSTOMERS
SET CNAME = 'ANIL JAIN'
WHERE CNAME = 'ANIL'

--9. Give an increment of ₹1000 in the Loan Amount. 
UPDATE BORROW
SET AMOUNT = AMOUNT+1000

--10. Update the customer’s name from MINU to SINU and change the amount to ₹10,000. 
UPDATE DEPOSIT
SET CNAME = 'SINU',AMOUNT = 10000
WHERE CNAME = 'MINU'

--Part – C 

--11. Change Name to Ramesh, Branch Name to VRCE & Amount to 5500, Whose Account Number is 102. 
UPDATE DEPOSIT
SET CNAME = 'RAMESH',BNAME = 'VRCE', AMOUNT = 5500
WHERE ACTNO = 102

--12. Make Branch Name & Amount NULL, Whose Loan Number is 481 & Name is KRANTI. 
UPDATE BORROW
SET BNAME = NULL,AMOUNT = NULL
WHERE LOANNO = 481 AND CNAME = 'KRANTI'

--13. Give 5% Increment in Loan Amount whose loan no less then 321. 
UPDATE BORROW
SET AMOUNT = AMOUNT+0.05*AMOUNT
WHERE LOANNO<321

--14. Update the customer city from BOMBAY to MUMBAI. 
UPDATE CUSTOMERS
SET CITY = 'MUMBAI'
WHERE CITY = 'BOMBAY'

--15. Update the branch name to VRCE where the Loan number is 375. 
UPDATE BORROW
SET BNAME = 'VRCE'
WHERE LOANNO = 375