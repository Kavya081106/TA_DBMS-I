----PART-A
--1. Retrieve all data from table DEPOSIT. 
SELECT * FROM DEPOSIT

--2. Retrieve all data from table BORROW.  
SELECT * FROM BORROW

--3. Retrieve all data from table CUSTOMERS.  
SELECT * FROM CUSTOMERS

--4. Display Account No, Customer Name & Amount from DEPOSIT table. 
SELECT ACTNO,CNAME,AMOUNT
FROM DEPOSIT

--5. Display Loan No, Amount from BORROW table. 
SELECT LOANNO,AMOUNT
FROM BORROW

--6. Display loan details of all customers who belongs to ‘ANDHERI’ branch. 
SELECT *
FROM BORROW
WHERE BNAME = 'ANDHERI'

--7. Give account no and amount of depositor, whose account no is equals to 106. 
SELECT ACTNO,AMOUNT
FROM DEPOSIT
WHERE ACTNO = 106

--8. Give name of borrowers having amount greater than 5000.  
SELECT CNAME
FROM BORROW
WHERE AMOUNT>5000

--9. Give name of customers who opened account after date '01-DEC-96'.  
SELECT CNAME
FROM DEPOSIT
WHERE ADATE>'1996-12-01'


--10. Display name of customers whose account no is less than 105. 
SELECT CNAME
FROM DEPOSIT
WHERE ACTNO<105


--11. Display name of customer who belongs to either ‘NAGPUR’ Or ‘DELHI’. (OR & IN) 
SELECT CNAME
FROM CUSTOMERS
WHERE CITY='NAGPUR' OR CITY='DELHI'

SELECT CNAME
FROM CUSTOMERS
WHERE CITY IN('NAGPUR','DELHI')

--12. Display name of customers with branch whose amount is greater than 4000 and account no is less than 105. 
SELECT CNAME,BNAME
FROM DEPOSIT
WHERE AMOUNT>4000 AND ACTNO<105

--13. Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000(AND & BETWEEN) 
SELECT *
FROM BORROW
WHERE AMOUNT>=3000 AND AMOUNT<=8000

SELECT *
FROM BORROW
WHERE AMOUNT BETWEEN 3000 AND 8000
 
--14. Find all depositors who do not belongs to ‘ANDHERI’ branch.
SELECT *
FROM DEPOSIT
WHERE BNAME <> 'ANDHERI';

SELECT *
FROM DEPOSIT
WHERE BNAME != 'ANDHERI';

SELECT *
FROM DEPOSIT
WHERE NOT BNAME = 'ANDHERI';

--15. Display the name of borrowers whose amount is NULL. 
SELECT CNAME
FROM BORROW
WHERE AMOUNT IS NULL

--Part – B 

--16. Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ 
--Or ‘M.G. ROAD’ and Account No is less than 104. 
SELECT ACTNO,CNAME,AMOUNT
FROM DEPOSIT
WHERE BNAME IN ('AJNI','KAROLBAGH','M.G. ROAD') AND ACTNO<104

--17. Display all the details of first five customers. 
SELECT TOP 5 *
FROM CUSTOMERS

--18. Display all the details of first three depositors whose amount is greater than 1000. 
SELECT TOP 3 *
FROM DEPOSIT
WHERE AMOUNT>1000


--19. Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to 
--‘ANDHERI’.
SELECT TOP 5 LOANNO,CNAME
FROM BORROW
WHERE BNAME <> 'ANDHERI'


--20. Retrieve all unique cities using DISTINCT. (Use Customers Table) 
SELECT DISTINCT CITY
FROM CUSTOMERS

--Part – C 
--21. Retrieve all unique branches using DISTINCT. (Use Branch Table) 
SELECT DISTINCT BNAME
FROM BRANCH

--22. Retrieve all the records of customer table as per their city name in ascending order. 
SELECT *
FROM CUSTOMERS
ORDER BY CITY 

--23. Retrieve all the records of deposit table as per their amount column in descending order. 
SELECT *
FROM DEPOSIT
ORDER BY AMOUNT DESC

--24. Retrieve all the details of customers in descending order of their city name. 
SELECT *
FROM CUSTOMERS
ORDER BY CITY DESC

--25. Show all unique borrowers& label the column Unique_Borrowers. (Display only Names)
SELECT DISTINCT CNAME AS Unique_Borrowers
FROM BORROW

