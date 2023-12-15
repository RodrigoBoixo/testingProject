cositenciadicequenosepuedecometeramenosquecambieVerdad
aislamientoquiredecierquelatransnuncasufriraporotraspresenciasFalso
regardingvisualisation/interpretphasessayVisualisationspecializationnotincourseVisualbeforeinterpretinterpretationismostvaluablevisalizationisbigpic
regardinggenerationandcollectiongenerationhappensfirstandoccurswithanymeasurementcollectionishowtorepresentdata
ERDdiffUMLbcdeliverable(/)mightnotappearmanytomanywithhistoryinumlistwoseparateone2manyinerdanderdhasnoconstructforcategorizations
UMLhavingvisibilitynameofatributeanddatatypelikevarchar20falso
UMLclassmodelcapturesdescriptiveattributes
eachtablehasatleastonecandidatekeytrue
developingdatabaseforbookstorecatalog1436usevertabelocheckconst
vehiclesingleownerrelationshiptoclasslicenseddriverwithowneranddateofsalemakesinglecategoryacategorizationtableofvehiclethathassaledateattributeandmandatoryrelationtolicenseddriver
theexpression:orderdatebetween2015-a12-a31AND2016-a01-a03onlyTruewhenorderdateis>=dearlydateand<=latedate
argumentCOALESCEcanbesubqsolongassubqreturnssinglevaluescalarTrue
whenusingINlistofvaluespassedtoIncannothavedupsFalse
customersordersmodelcansaybecausePKofchildmatchesparentCardinalityis1to1andbecausepkofchildmatchesparentcanneverbemorethanonerowofchildperparent
studentmajordeclaredstudentaccordingtomodelstudentcanhavenoneatallbutnomorethanone
DDLcreateemployeesandcreatestatesfirstsay2seprelationshipsfromstatetoemployeeandeachrelationshipfromstatetoemployeerepresentsdiffrole
truewhengiventablealiasfromclausemustusealiaswhenreferringtotable
falseeverysingletimeyoucreatesubqinsqlmustgiveparenthesiszedespressionthatissubqanalias
inthepracticesqldatabaseifdonaturaljoinbetweencustomersandorderdetailsdatabasewilloutputarowforeverypossiblecombbetweencustomersandorderdetails365512
documentbasednosqlfavorembeddingbecausesimplifiestransactionmanagementtrue
softstatemeansbecauseupdatespossiblylaginginarrivingsodatacouldchange
inpizzamodelcannotknowwhattochargewithoutknowingpizzawearechargingandsieandtheremaybesizesnotusedbyanypizzabuteverypizzaneadsatlestonesize
givenbigpizzamodelquestionlayernumbergoesinpizzaingredient
inpizzaifestlishsurrogatekeycandidatekeyneedsmigratedfalse
eachdepartmenthassetofcoursestrue
inorderdetailsifaddsubtotalsubkeybcsubtotalredundantfalse
inpracticesqlifputoverallstatusunderorderdetailscreatesubkeytrue
becauseofreqsofpk/ckofchidincategorizationalwaysknowmultiplictyofparenttrue
tosaycategorizationisincopleteoverlappingeachinstanceofgenericpaentcanfallanynumber
employeessupervisorsvertabelopkinsupervisors,agivenemployee,anemployeecanworkdiffmanagers
employeessupervisoranemployeecanworkformultiplemanagersandthismodelonlyallowstotrackcurrentrelationshipsbcofpk
tofindcustomerswhopurchseditemsincomoncanuseexiststrue
todeleterowinsqlalchemefirstussess.commithensess.delete
behindscenespythoncodesess.addperformsaninsertintothetablemappedtotheclass
inmongodbeveryindexisuniqueandcanbeusedasckfalse
cansayaboutmongoonetofewofthe1toNthiswillscaleleastdeletingparentwilldeletechildrenanothertermforpatternisembeddign
thereisnoneedtoimplementconstraintsinmongofalse
manytomanyinmongomustusejunctioncollectionfalse
fromcustomerssameresulttrue
assumerelationAandBaretwodiffqueriesletrasrarasproduceszerosTrue
remembering~meansregulartrue
usingsqlifrunqueryselectcountcustomernamereturnscustomernumberofallcustomerswhohavesummitedmorethanoneorderinaday
sameasabovereceiceoneoutputrowforcustomerwhoplacedorder
insqlWITHreturnstableofvaluesyoumustuseitasyouwouldusetable
subquerythatreturnstablemusthavealias
subquertythatreturnstablescanappearinfromtrue
relationship3nfandbcnftrue
anybcnfnofunctionaldependenciestrue
atomicitymeansonestatementfalse
SELECT p.productCode, COUNT(o.orderNumber) AS orderCount
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
JOIN orders o ON od.orderNumber = o.orderNumber
GROUP BY p.productCode
HAVING COUNT(o.orderNumber) > 52;
SELECT productCode, productName, (quantityInStock * MSRP) AS inventoryValue
FROM products
WHERE (quantityInStock * MSRP) = (
  SELECT MAX(quantityInStock * MSRP)
  FROM products
)
ORDER BY productCode;
SELECT city, state, 'Office' AS Type
FROM offices
WHERE state IS NOT NULL
UNION
SELECT city, state, 'Customer' AS Type
FROM customers
WHERE state IS NOT NULL
ORDER BY city, state;
Select customer name, order date, quantity ordered, product line, product name for all
orders by a customer with the string ‘Decorations’ in their name, made and shipped during
odd-numbered months in 2015 ordered by customer name and order date. SQL has a
mod function that takes two arguments: the number that you want to perform modular
division on, and the divisor. For instance mod (8, 3) will return 2. (28)
SELECT customers.customerName, orders.orderDate, orderdetails.quantityOrdered, products.productLine, products.productName
FROM customers
JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber
JOIN orders ON customers.customerNumber = orders.customerNumber
JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
JOIN products ON orderdetails.productCode = products.productCode
WHERE customers.customerName LIKE '%Decorations%'
AND EXTRACT(YEAR FROM orders.orderDate) = 2015
AND EXTRACT(MONTH FROM orders.orderDate) % 2 = 1
ORDER BY customers.customerName, orders.orderDate;
 List the product lines, the first 50 characters of the product line’s text description and
vendors that supply the products in that product line ordered by product Line and product
Vendor. (65) The Derby database gives us the SUBSTR function that you can read about
Here.
SELECT DISTINCT p.productline, SUBSTRING(pv.textdescription, 1, 50) AS product_line_description, p.productvendor
FROM products p
INNER JOIN productlines pv ON p.productline = pv.productline;
SELECT
   c.customerName AS CustomerName,
   SUM(od.quantityOrdered * od.priceEach) AS TotalPayments
FROM
   customers c
JOIN
   orders o ON c.customerNumber = o.customerNumber
JOIN
   orderdetails od ON o.orderNumber = od.orderNumber
JOIN
   payments p ON o.customerNumber = p.customerNumber
GROUP BY
   c.customerNumber, c.customerName;
Find the greatest number of payments made in any month in any year. (1)
	SELECT MAX(paymentCount) AS maxPayments
FROM (
   SELECT EXTRACT(YEAR FROM paymentDate) AS year,
          EXTRACT(MONTH FROM paymentDate) AS month,
          COUNT(*) AS paymentCount
   FROM payments
   GROUP BY EXTRACT(YEAR FROM paymentDate), EXTRACT(MONTH FROM paymentDate)
) AS monthlyPayment;
List the city, phone, address, state, country, postal code, and territory of each office and  the number of employees working in that office (7).
SELECT o.city, o.phone, o.addressLine1,o.state,o.country,o.postalCode,o.territory, COUNT(e.employeenumber) as numberOfEmployees
from offices o
join employees e on o.officecode = e.officecode
group by o.officecode
 What is the name of the product(s) that makes us the most money (qty*price) across all  orders for that product? Returns 1.
SELECT productName
FROM products
WHERE productCode = (
   SELECT od.productCode
   FROM orderdetails od
   JOIN (
       SELECT productCode, SUM(quantityOrdered * priceEach) AS totalSales
       FROM orderdetails
       GROUP BY productCode
   ) AS prodSales ON od.productCode = prodSales.productCode
   ORDER BY prodSales.totalSales DESC
   LIMIT 1
);
 List the product name of the products in the product line(s) with the largest number of  products. Returns 38.
SELECT productName
FROM products
WHERE productLine IN (
   SELECT productLine
   FROM (
       SELECT productLine, COUNT(*) as productCount
       FROM products
       GROUP BY productLine
       ORDER BY productCount DESC
       LIMIT 1
   ) as lineWithMaxCount
);
List all people that we deal with (employees and customer contacts). Display contact first  name, contact last name, company name for the customers. For the employees, display  their first name, last name, and just the literal ‘Employee’ for the employees. Returns 145  rows.
SELECT
   contactfirstname ,
   contactlastname ,
   customername
FROM
   customers


UNION ALL


SELECT
   firstname,
   lastname,
   'Employee' AS role
FROM
   employees;
List the name of all customers who didn't order in 2015 (78). Order by customer name.
SELECT customername
FROM customers
WHERE customernumber NOT IN (
   SELECT customernumber
   FROM orders
WHERE EXTRACT(YEAR FROM orderdate) = 2015
)
ORDER BY customername;
SELECT  off1.officeCode, off1.city, off1.addressLine1,
                 off1.addressLine2, off1.state, off1.country,
                 emp.lastname || ', ' || emp.firstname AS "Employee",
                man.lastname || ', ' || man.firstname AS "Manager"
FROM    employees emp INNER JOIN employees man ON
                (emp.reportsto = man.employeenumber AND      -- Find the manager
                emp.officecode = man.officecode)                            -- Both employees in the same office
                -- Since both employees are in the same office, it doesn't matter which one we look at.
                INNER JOIN offices off1 ON off1.officecode = emp.officecode
ORDER BY off1.country, off1.city;
-- List all of the product lines that each customer has never ordered from
-- Find all of the product lines that each customer has ordered from
SELECT  DISTINCT customerName, productline
FROM    customers INNER JOIN orders USING(customerNumber)
        INNER JOIN orderDetails USING(orderNumber)
        INNER JOIN products USING(productCode)
ORDER BY customerName, productLine;

-- Remove the productLines that they HAVE ordered from
SELECT  DISTINCT customerName, productline
FROM    customers, productLines
EXCEPT
SELECT  DISTINCT customerName, productline
FROM    customers INNER JOIN orders USING(customerNumber)
        INNER JOIN orderDetails USING(orderNumber)
        INNER JOIN products USING(productCode)
ORDER BY customerName, productLine;

-- Get a list of the product lines that each customer has never ordered
-- STRING_AGG is another aggregation function, like MAX and MIN.
-- look here: https://www.postgresqltutorial.com/postgresql-aggregate-functions/postgresql-string_agg-function/
SELECT  customerName, STRING_AGG(productLine, ', ' ORDER BY productLine)
FROM    (SELECT DISTINCT customerNumber, customerName, productline
        FROM    customers, productLines
        EXCEPT
        SELECT  DISTINCT customerNumber, customerName, productline
        FROM    customers INNER JOIN orders USING(customerNumber)
                INNER JOIN orderDetails USING(orderNumber)
                INNER JOIN products USING(productCode)
        ORDER BY customerName, productLine) not_ordered
GROUP BY customerNumber, customerName
;
