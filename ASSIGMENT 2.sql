CREATE TABLE crew 
(
crewId NUMBER (8) ,
employeesId CHAR (8) NOT NULL, 
memberCount VARCHAR2 (20) NOT NULL,
name VARCHAR2 (30) NOT NULL,
CONSTRAINT crew_pk  PRIMARY KEY (crewId)
);

INSERT INTO Crew (crewId , employeesId , memberCount , name )
VALUES ('29765341', '2002670', '1' ,'Elinana Malone');

INSERT INTO Crew (crewId , employeesId , memberCount , name )
VALUES ('29765342', '2002671', '2' ,'Leon Rebecca');

INSERT INTO Crew (crewId , employeesId , memberCount , name )
VALUES ('29765343', '2002672', '3' ,'Diann Fred');

INSERT INTO Crew (crewId , employeesId , memberCount , name )
VALUES ('29765344', '2002673', '4' ,'Erick Smith');

INSERT INTO Crew (crewId , employeesId , memberCount , name )
VALUES ('29765345', '2002674', '5' ,'Jeff Leo');

INSERT INTO Crew (crewId , employeesId , memberCount , name )
VALUES ('29765346', '2002675', '6' ,'Jen Lavender ');

INSERT INTO Crew (crewId , employeesId , memberCount , name )
VALUES ('29765347', '2002676', '7' ,'Natalee Debbi ');

CREATE TABLE Employee (
employeesId NUMBER (8),
firstName VARCHAR2 (30) NOT NULL , 
lastName VARCHAR2 (30) NOT NULL ,
email VARCHAR2 (40) NOT NULL,
phone NUMBER (10) NOT NULL, 
jobTitle VARCHAR2 (20) NOT NULL
,isManager VARCHAR2 (20) NOT NULL,
hireDate DATE NOT NULL,
salary NUMBER (6) NOT NULL, 
workType VARCHAR2 (20) NOT NULL, 
crewId NUMBER (8) NOT NULL,
CONSTRAINT employee_pk PRIMARY KEY(employeesId)
)


INSERT INTO Employee (employeesId , firstName, lastName ,email,phone, jobTitle, isManager,hireDate ,
salary , workType , crewId ) 
VALUES ('12002670', 'Elinana', 'Malone','Eliana.Malone@gmail.com',
'0491570156', 'Manager' , 'yes','20-may-2011','70000', 
'frontend suport', '29765341');

INSERT INTO Employee (employeesId , firstName, lastName ,email,phone, jobTitle, isManager,hireDate ,
salary , workType , crewId ) 
VALUES ('12002671', 'Leon', 'Rebecca','Leon.Rebecca@gmail.com',
'0476631310', 'backend' , 'No','04-Jun-2017','60000', 
'techniecal support', '29765342');

INSERT INTO Employee (employeesId , firstName, lastName ,email,phone, jobTitle, isManager,hireDate ,
salary , workType , crewId ) 
VALUES ('12002672', 'Diann', 'Fred','Diann.Fred@gmail.com',
'0442759568', 'Backend' , 'no','09-Feb-2016','60000', 
'Techneical support', '29765343');

INSERT INTO Employee (employeesId , firstName, lastName ,email,phone, jobTitle, isManager,hireDate ,
salary , workType , crewId ) 
VALUES ('12002673', 'Erick', 'Smith','Erick.Smith@gmail.com',
'0476574042', 'crew' , 'no','18-Sep-2020','60000', 
'frontend support', '29765344');

INSERT INTO Employee ( employeesId , firstName, lastName ,email,phone, jobTitle, isManager,hireDate ,
salary , workType , crewId ) 
VALUES ('12002674', 'Jeff', 'Leo','Jeff.Leo@gmail.com',
'0493648938', 'crew' , 'no','30-Jul-2019','60000', 
'frontend support', '29765345');

INSERT INTO Employee (employeesId , firstName, lastName ,email,phone, jobTitle, isManager,hireDate ,
salary , workType , crewId ) 
VALUES ('12002675', 'Jen', 'Lavender','Jen.Lavender@gmail.com',
'0436367854', 'crew' , 'no','15-Apr-2018','60000', 
'frontend support', '29765346');

INSERT INTO Employee (employeesId , firstName, lastName ,email,phone, jobTitle, isManager,hireDate ,
salary , workType , crewId ) 
VALUES ('12002676', 'Natalee', 'Debbie','Natalee.Debbie@gmail.com',
'0457294465', 'Crew' , 'no','03-Sep-2021','60000', 
'frontend support', '29765347');

CREATE TABLE Cargo
(
cargoId NUMBER (10) NOT NULL , 
supplierId NUMBER (10) NOT NULL , 
ISBN NUMBER (13) NOT NULL,
CONSTRAINT fk_ISBN PRIMARY KEY(cargoId)
);

INSERT INTO Cargo ( cargoId , supplierId  , ISBN)
VALUES ('8043348762', '9125639450', '1536207195' );

INSERT INTO Cargo ( cargoId , supplierId  , ISBN)
VALUES ('8043284748', '9125639451', '547577311' );

INSERT INTO Cargo ( cargoId , supplierId  , ISBN)
VALUES ('8043337382', '9125639452', '761160949' );

INSERT INTO Cargo ( cargoId , supplierId  , ISBN)
VALUES ('8043292847', '9125639453', '1791392792');

INSERT INTO Cargo ( cargoId , supplierId  , ISBN)
VALUES ('8043373371', '9125639454', '1982123745' );

INSERT INTO Cargo ( cargoId , supplierId  , ISBN)
VALUES ('8043063738', '9125639455', '1789096499' );

INSERT INTO Cargo ( cargoId , supplierId  , ISBN)
VALUES ('8043063739', '9125639456', '553537865');


CREATE TABLE Shipping 
(
shippingId NUMBER (10) NOT NULL, 
cargoId NUMBER (10) NOT NULL,
shippingDate DATE NOT NULL, 
shippingStatus VARCHAR2 (10) NOT NULL,
origin VARCHAR2 (20),
CONSTRAINT shipping_pk PRIMARY KEY(shippingId)
);

INSERT INTO Shipping (shippingId , cargoId ,shippingDate , 
shippingStatus ,origin )
VALUES ('6474938361', '8043348762', '2-march-2019','deliverd', 'NSW');

INSERT INTO Shipping (shippingId , cargoId ,shippingDate , 
shippingStatus ,origin )
VALUES ('6474938362', '8043284748', '4-august-2020', 'deliverd' , 'VIC');

INSERT INTO Shipping (shippingId , cargoId ,shippingDate , 
shippingStatus ,origin )
VALUES ('6474938363', '8043337382', '27-september-2020','deliverd','QLD');

INSERT INTO Shipping (shippingId , cargoId ,shippingDate , 
shippingStatus ,origin )
VALUES ('6474938364', '8043292847', '16-february-2021', 'shipped' ,'NSW');

INSERT INTO Shipping (shippingId , cargoId ,shippingDate , 
shippingStatus ,origin )
VALUES ('6474938365', '8043373371', '30-january-2021','shipped' ,'WA');

INSERT INTO Shipping (shippingId , cargoId ,shippingDate , 
shippingStatus ,origin )
VALUES ('6474938366', '8043063738', '31-march-2021','shipped' ,'VIC');

INSERT INTO Shipping (shippingId , cargoId ,shippingDate , 
shippingStatus ,origin )
VALUES ('6474938367', '8043063748', '1-may-2021', 'shipped','NSW');

CREATE TABLE Status
(
shippingId NUMBER (10) NOT NULL , 
orderStatus VARCHAR (10) NOT NULL,
CONSTRAINT shippingId_pk PRIMARY KEY(shippingId)
);

INSERT INTO Status (shippingId , orderStatus )
VALUES ('6474938361', 'deliverd');

INSERT INTO Status (shippingId , orderStatus )
VALUES ('6474938362', 'deliverd');

INSERT INTO Status (shippingId , orderStatus )
VALUES ('6474938363', 'deliverd');

INSERT INTO Status (shippingId , orderStatus )
VALUES ('6474938364', 'shipped');

INSERT INTO Status (shippingId , orderStatus )
VALUES ('6474938365', 'shipped');

INSERT INTO Status (shippingId , orderStatus )
VALUES ('6474938366', 'shipped ' );

INSERT INTO Status (shippingId , orderStatus )
VALUES ('6474938367', 'shipped' );

CREATE TABLE Orders
(
orderId NUMBER (10), 
isSpecialRequest VARCHAR2 (10),
amounts NUMBER (10) NOT NULL, 
employeeId NUMBER (8) NOT NULL, 
ISBN NUMBER (13) NOT NULL, 
statusId NUMBER (10) NOT NULL,
customerId NUMBER (8) NOT NULL , 
supplierId NUMBER (10) NOT NULL,
CONSTRAINT order_pk PRIMARY KEY(orderId)
);


INSERT INTO Orders (orderId, isSpecialRequest,amounts , employeeId , 
ISBN , statusId , customerId  , supplierId)
VALUES ('1536207195', 'no', '3' , '2002673', '1536207195', '56731', '10745831', '9125639450');

INSERT INTO Orders (orderId, isSpecialRequest,amounts , employeeId , 
ISBN , statusId , customerId  , supplierId)
VALUES ('547577311', 'no', '4' , '2002674', '547577311', '56732', '10745832', '9125639451');

INSERT INTO Orders (orderId, isSpecialRequest,amounts , employeeId , 
ISBN , statusId , customerId  , supplierId)
VALUES ('761160949', 'no', '7' , '2002675', '761160949', '56733', '10745833', '9125639452');

INSERT INTO Orders (orderId, isSpecialRequest,amounts , employeeId , 
ISBN , statusId , customerId  , supplierId)
VALUES ('1791392792', 'no', '2' , '2002676', '1791392792', '56734', '10745834', '9125639453');

INSERT INTO Orders (orderId, isSpecialRequest,amounts , employeeId , 
ISBN , statusId , customerId  , supplierId)
VALUES ('1982123745', 'no', '6' , '2002676', '1982123745', '56735', '10745835','9125639454');

INSERT INTO Orders (orderId, isSpecialRequest,amounts , employeeId , 
ISBN , statusId , customerId  , supplierId)
VALUES ('1789096499', 'no', '2' , '2002675', '1789096499', '56736', '10745836','9125639455');

INSERT INTO Orders (orderId, isSpecialRequest,amounts , employeeId , 
ISBN , statusId , customerId  , supplierId)
VALUES ('553537865', 'no', '1' , '2002670', '553537865', '56737', '10745837','9125639456');


CREATE TABLE Book
(ISBN NUMBER (13) NOT NULL , 
authors VARCHAR (30) NOT NULL, 
publishedDate DATE NOT NULL, 
publisher VARCHAR (30) NOT NULL,
bookGenre VARCHAR (20) NOT NULL, 
listPrice NUMBER (10) NOT NULL, 
copiesAvaliable NUMBER (10) DEFAULT 1, 
bookType VARCHAR (20) NOT NULL,
CONSTRAINT ISBN_pk PRIMARY KEY(ISBN)
);

INSERT INTO Book (ISBN, authors , publishedDate, publisher,bookGenre, listPrice , copiesAvaliable , bookType )
VALUES ('1536207195', 'Alisson Croggon', '13-april-2021','candlewick',
'Children' , '13', '17', 'Printed');

INSERT INTO Book (ISBN, authors , publishedDate, publisher,bookGenre, listPrice , copiesAvaliable , bookType )
VALUES ('54757311', 'Linda Sue Park', '4-october-2011','HMH books',
'Fiction' , '12', '12', 'Printed');

INSERT INTO Book (ISBN, authors , publishedDate, publisher,bookGenre, listPrice , copiesAvaliable , bookType )
VALUES ('761160949', 'Michael Lindbald', '9-august-2016','workman',
'Children' , '20', '18', 'Printed');

INSERT INTO Book (ISBN, authors , publishedDate, publisher,bookGenre, listPrice , copiesAvaliable , bookType )
VALUES ('1791392792', 'Collen Hoover', '10-december-2018','independatly published',
'Fiction' , '15', '15', 'E-book');

INSERT INTO Book (ISBN, authors , publishedDate, publisher,bookGenre, listPrice , copiesAvaliable , bookType )
VALUES ('1982123745', 'jack carr', '13-april-2021','Atria',
'Children' , '10', '12', 'E-book');

INSERT INTO Book (ISBN, authors , publishedDate, publisher,bookGenre, listPrice , copiesAvaliable , bookType )
VALUES ('1789096499', 'Stephan King', '2-march-2021','Hard Case Crime',
'Thriller' , '16', '20', 'not fiction');

INSERT INTO Book (ISBN, authors , publishedDate, publisher,bookGenre, listPrice , copiesAvaliable , bookType )
VALUES ('553537865', 'Suzan Lang', '15-May-2018','Random',
'Educational' , '18', '12', 'fiction');

CREATE TABLE Supplier
(
supplierId NUMBER (10) NOT NULL, 
name VARCHAR (20) NOT NULL, 
phone NUMBER (10) NOT NULL, 
email VARCHAR (50) NOT NULL, 
address VARCHAR (100) NOT NULL,
CONSTRAINT supplier_pk PRIMARY KEY (supplierId)
);

INSERT INTO Supplier (supplierId , name , phone , email , address )
VALUES ('9125639450', 'Ace Alysia ', '0439874273','Ace.Alysia@gmail.com'
,'82 Campbells River Road, Follarenebri 2833 NSW ' );

INSERT INTO Supplier (supplierId , name , phone , email , address )
VALUES ('9125639451', 'Zeke Landen', '0429573921','Zeke.Landen@gmail.com'
,'15 Hargrave Road, Blacksoil 4306 QLD' );

INSERT INTO Supplier(supplierId , name , phone , email , address )
VALUES ('9125639452', 'Nick Jason', '0410375265 ','Nick.Jason@gmail.com'
,'18 Railway Street western Creek 4357 QLD ' );

INSERT INTO Supplier (supplierId , name , phone , email , address )
VALUES ('9125639453', 'Alex Bellamy ', '0410294658','Alex.Bellamy@gmail.com'
,'3 Glenpark Road, Karangi 2450 NSW ' );

INSERT INTO Supplier(supplierId , name , phone , email , address )
VALUES ('9125639454', 'Rodje Rom', '0418464920','Rodje.Rom@gmail.com'
,'2 George Street, Dunkeld 4465 QLD ' );

INSERT INTO Supplier(supplierId , name , phone , email , address )
VALUES ('9125639455', 'Page Jocy', '0409253237','Page.Jocy@gmail.com'
,'46 Deerbrook Rd Wollert, 3075 MLB' );

INSERT INTO Supplier(supplierId , name , phone , email , address )
VALUES ('9125639456', 'Stacy Mitch', '0420279262','Stacy.Mitch@gmail.com'
,'23 chaseens rd Roxbugh Park 3064 MLB' );




CREATE TABLE Customers 
(
customerId NUMBER (8)  NOT NULL,
CONSTRAINT customer_pk
firstName VARCHAR (30) NOT NULL, 
lastName VARCHAR (30) NOT NULL, 
mailingAddress VARCHAR (100) NOT NULL, 
email VARCHAR (40) NOT NULL, 
phone NUMBER (10) NOT NULL, 
password VARCHAR2 (20) NOT NULL, 
securityQuestion VARCHAR2 (10) NOT NULL, 
verificationCode NUMBER (3) NOT NULL, 
registrationDate DATE NOT NULL,
accountCloseDate DATE,
CONSTRAINT customer_pk PRIMARY KEY(customerId)
);


INSERT INTO Customers (customerId , firstName , lastName , mailingAddress , email,  phone , password, 
securityQuestion , verificationCode , registrationDate , accountCloseDate)
VALUES ('10745831', 'Maralyn ','Jason','82 Campbells River Road, Collarenebri 2833 NSW ','Maralyn.jason@gmail.com',
'0456297250' , 'hfewi3r289', '883bfbf','873','9-July-2019','20-FEB-2020');

INSERT INTO Customers (customerId , firstName , lastName , mailingAddress , email,  phone , password, 
securityQuestion , verificationCode , registrationDate ,accountCloseDate)
VALUES ('10745832', ' Avah','Edie ','24 Hargrave Road, Blacksoil 4306 QLD','Avah.Edie@gmail.com',
'0402501274' , '83434rgibfd', 'jsbcube','934','30-May-2020', NULL);

INSERT INTO Customers (customerId , firstName , lastName , mailingAddress , email,  phone , password, 
securityQuestion , verificationCode , registrationDate ,accountCloseDate)
VALUES ('10745833', 'Teale  ','Karina','81 Railway Street western Creek 4357 QLD ','Teale.Karina@gmail.com',
'0402926392' , 'y93r2gef99', 'jbfuwef','363','6-October-2020', NULL);


INSERT INTO Customers (customerId , firstName , lastName , mailingAddress , email,  phone , password, 
securityQuestion , verificationCode , registrationDate ,accountCloseDate)
VALUES ('10745834', 'Nyla','harlow','33 Glenpark Road, Karangi 2450 NSW ','Nyla.Harlow@gmail.com',
'0427285695' , '2i3hdibewi', 'kbfweie','387','18-July-2020', NULL);

INSERT INTO Customers (customerId , firstName , lastName , mailingAddress , email,  phone , password, 
securityQuestion , verificationCode , registrationDate ,accountCloseDate)
VALUES ('10745835', 'Harlan ','Maurene','32 George Street, Dunkeld 4465 QLD ','Harlan.Maurene@gmail.com',
'0482718537' , '9wefiewg8', 'iwbfibf','304','23-April/2021', NULL);

INSERT INTO Customers (customerId , firstName , lastName , mailingAddress , email,  phone , password, 
securityQuestion , verificationCode , registrationDate ,accountCloseDate)
VALUES ('10745836', 'Sable','May','36 Deerbrook Rd Wollert, 3075 MLB','Sable.May@gmail.com',
'0426372021' , 'iwhefiebj3', 'f9b9wb9','373','24-April-2021', NULL);

INSERT INTO Customers (customerId , firstName , lastName , mailingAddress , email,  phone , password, 
securityQuestion , verificationCode , registrationDate ,accountCloseDate)
VALUES ('10745837', ' Brendon ','Tansy','8 chaseens rd Roxbugh Park 3064 MLB','Bredon.Tansy@gmail.com',
'0492877845' , 'ubyfr80433', 'onfe93b','954','1-May-2021', NULL);

//Q3//
ALTER TABLE Employee
ADD (emergencyContactName VARCHAR2 (50), emergencyContactPhone NUMBER (10));

UPDATE Employee
SET emergencyContactName = 'Indiana Norman' , emergencyContactPhone = '0427478435' 
WHERE crewId = '29765341';

UPDATE Employee
SET emergencyContactName = 'Arn Alene' , emergencyContactPhone = '0429949102' 
WHERE crewId = '29765342';

UPDATE Employee
SET emergencyContactName = 'Winifred Harley' , emergencyContactPhone = '0410847393' 
WHERE crewId = '29765343';

UPDATE Employee
SET emergencyContactName = 'Lauryn Romaine' , emergencyContactPhone = '0482934612' 
WHERE crewId = '29765344';

UPDATE Employee
SET emergencyContactName = 'Kristal Cam' , emergencyContactPhone = '0474909475' 
WHERE crewId = '29765345';

UPDATE Employee
SET emergencyContactName = 'Christabel Regina' , emergencyContactPhone = '0490289346' 
WHERE crewId = '29765346';

UPDATE Employee
SET emergencyContactName = 'Marcus Kyrie' , emergencyContactPhone = '0438739012' 
WHERE crewId = '29765347';

//Q4//
UPDATE Employee
SET salary = salary + 1.17/100 * salary
WHERE isManager = 'no';

UPDATE Employee
SET salary = salary + 1.53/100 * salary
WHERE isManager = 'yes';

//Q5//
SELECT *
FROM Book 
WHERE (bookGenre = 'Children' OR bookGenre = 'Fiction') 
AND authors = &authorName;

//Q6//
SELECT * 
FROM Orders 
WHERE customerId = (SELECT customerId	
FROM customers WHERE firstName = &firstName
AND lastName = &lastName);


SELECT customerId, SUM(listPrice * amounts) AS "Total_Spent"
FROM (SELECT * FROM(SELECT * FROM Orders WHERE customerId = &customerId)
INNER JOIN Book USING(ISBN))GROUP BY customerId;

//Q7//
SELECT  orderId, employeeId 
FROM Orders
WHERE employeeId IN 
(SELECT employeeId  FROM Orders
GROUP BY employeeId
HAVING COUNT (*) >= 2);