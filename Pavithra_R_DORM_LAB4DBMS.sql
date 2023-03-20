drop database if exists E_commerce;	
	create database E_commerce;
	use E_commerce;
	drop table if exists Supplier ;
	CREATE TABLE Supplier (
    SUPP_ID INT PRIMARY KEY NOT NULL,
    SUPP_NAME VARCHAR(50) NOT NULL,
    SUPP_CITY VARCHAR(50) NOT NULL,
    SUPP_PHONE VARCHAR(50) NOT NULL
);
	drop table if exists customer;
	CREATE TABLE Customer (
    CUS_ID INT PRIMARY KEY NOT NULL,
    CUS_NAME VARCHAR(20) NOT NULL,
    CUS_CITY VARCHAR(30) NOT NULL,
    CUS_PHNE VARCHAR(10) NOT NULL,
    CUS_GENDER CHAR
);
	drop table if exists category;
	CREATE TABLE category (
    CAT_ID INT PRIMARY KEY NOT NULL,
    CAT_NAME VARCHAR(20) NOT NULL
);
	drop table if exists Product;
	CREATE TABLE Product (
    PRO_ID INT PRIMARY KEY NOT NULL,
    PRO_NAME VARCHAR(20) NOT NULL DEFAULT 'Dummy',
    PRO_DESC VARCHAR(60),
    CAT_ID INT,
    FOREIGN KEY (CAT_ID)
        REFERENCES category (CAT_ID)
);
	drop table if exists supplier_pricing;
	CREATE TABLE supplier_pricing (
    PRICING_ID INT PRIMARY KEY,
    PRO_ID INT NOT NULL,
    SUPP_ID INT NOT NULL,
    SUPP_PRICE INT DEFAULT 0,
    FOREIGN KEY (PRO_ID)
        REFERENCES product (PRO_ID),
    FOREIGN KEY (SUPP_ID)
        REFERENCES supplier (SUPP_ID)
);
	drop table if exists `Order`;
	CREATE TABLE `Order` (
    ORD_ID INT PRIMARY KEY,
    ORD_AMOUNT INT NOT NULL,
    ORD_DATE DATE NOT NULL,
    CUS_ID INT NOT NULL,
    PRICING_ID INT NOT NULL,
    FOREIGN KEY (CUS_ID)
        REFERENCES customer (CUS_ID),
    FOREIGN KEY (PRICING_ID)
        REFERENCES supplier_pricing (PRICING_ID)
);
	drop table if exists rating;
	CREATE TABLE rating (
    RAT_ID INT PRIMARY KEY,
    ORD_ID INT NOT NULL,
    FOREIGN KEY (ORD_ID)
        REFERENCES `Order` (ORD_ID),
    RAT_RATSTARS INT NOT NULL
);
    
insert 	into 	supplier	values	(	1       ,       "	Rajesh Retails  "       ,       "       Delhi   "	,	1234567890	);
insert 	into 	supplier	values	(	2	,	"	Appario Ltd.	"	,	"	Mumbai	"	,	2589631470	);
insert 	into 	supplier	values	(	3	,	"	Knome products	"	,	"	Banglore"	,	9785462315	);
insert 	into 	supplier	values	(	4	,	"	Bansal Retails	"	,	"	Kochi	"	,	8975463285	);
insert 	into 	supplier	values	(	5	,	"	Mittal Ltd.	"	,	"	Lucknow	"	,	7898456532	);
insert 	into 	customer	values	(	1	,	"	AAKASH	"	,	9999999999	,	"	DELHI	"	,'M');
insert 	into 	customer	values	(	2	,	"	AMAN	"	,	9785463215	,	"	NOIDA	"	,'M');
insert 	into 	customer	values	(	3	,	"	NEHA	"	,	9999999999	,	"	MUMBAI	"	,'F');
insert 	into 	customer	values	(	4	,	"	MEGHA	"	,	9994562399	,	"	KOLKATA	"	,'F');
insert 	into 	customer	values	(	5	,	"	PULKIT	"	,	7895999999	,	"	LUCKNOW	"	,'M');


insert 	into 	Category	values	(	1	,	"BOOKS");
insert 	into 	Category	values	(	2	,	"GAMES");
insert 	into 	Category	values	(	3	,	"GROCERIES");
insert 	into 	Category	values	(	4	,	"ELECTRONICS");
insert 	into 	Category	values	(	5	,	"CLOTHES");


insert 	into 	Product	values	(	1	,	"	GTA V	"	,	"	Windows 7 and above with i5 processor and 8GB RAM	"	,	2	);
insert 	into 	Product	values	(	2	,	"	TSHIRT	"	,	"	SIZE-L with Black, Blue and White variations	"	,	5	);
insert 	into 	Product	values	(	3	,	"	ROG LAPTOP	"	,	"	Windows 10 with 15inch screen, i7 processor, 1TB SSD	"	,	4	);
insert 	into 	Product	values	(	4	,	"	OATS	"	,	"	Highly Nutritious from Nestle	"	,	3	);
insert 	into 	Product	values	(	5	,	"	HARRY POTTER	"	,	"	Best Collection of all time by J.K Rowling	"	,	1	);
insert 	into 	Product	values	(	6	,	"	MILK	"	,	"	1L Toned MIlk	"	,	3	);
insert 	into 	Product	values	(	7	,	"	Boat Earphones	"	,	"	1.5Meter long Dolby Atmos	"	,	4	);
insert 	into 	Product	values	(	8	,	"	Jeans	"	,	"	Stretchable Denim Jeans with various sizes and color	"	,	5	);
insert 	into 	Product	values	(	9	,	"	Project IGI	"	,	"	compatible with windows 7 and above	"	,	2	);
insert 	into 	Product	values	(	10	,	"	Hoodie	"	,	"	Black GUCCI for 13 yrs and above	"	,	5	);
insert 	into 	Product	values	(	11	,	"	Rich Dad Poor Dad	"	,	"	Written by RObert Kiyosaki	"	,	1	);
insert 	into 	Product	values	(	12	,	"	Train Your Brain	"	,	"	By Shireen Stephen	"	,	1	);


Insert	into	SUPPLIER_PRICING	values	(	1	,	1	,	2	,	1500);
Insert	into	SUPPLIER_PRICING	VALUES	(	2	,	3	,	5	,	30000);
Insert	into	SUPPLIER_PRICING	VALUES	(	3	,	5	,	1	,	3000);
Insert	into	SUPPLIER_PRICING	VALUES	(	4	,	2	,	3	,	2500);
Insert	into	SUPPLIER_PRICING	VALUES	(	5	,	4	,	1	,	1000);
Insert	into	SUPPLIER_PRICING	VALUES	(	6	,	12	,	2	,	780);
Insert	into	SUPPLIER_PRICING	VALUES	(	7	,	12	,	4	,	789);
Insert	into	SUPPLIER_PRICING	VALUES	(	8	,	3	,	1	,	31000);
Insert	into	SUPPLIER_PRICING	VALUES	(	9	,	1	,	5	,	1450);
Insert	into	SUPPLIER_PRICING	VALUES	(	10	,	4	,	2	,	999);
Insert	into	SUPPLIER_PRICING	VALUES	(	11	,	7	,	3	,	549);
Insert	into	SUPPLIER_PRICING	VALUES	(	12	,	7	,	4	,	529);
Insert	into	SUPPLIER_PRICING	VALUES	(	13	,	6	,	2	,	105);
Insert	into	SUPPLIER_PRICING	VALUES	(	14	,	6	,	1	,	99);
Insert	into	SUPPLIER_PRICING	VALUES	(	15	,	2	,	5	,	2999);
Insert	into	SUPPLIER_PRICING	VALUES	(	16	,	5	,	2	,	2999);


insert 	into 	`Order`	values	(	101	,	1500	,'2021-10-06',	2	,	1	);
insert 	into 	`Order`	values	(	102	,	1000	,'2021-10-12',	3	,	5	);
insert 	into 	`Order`	values	(	103	,	30000	,'2021-09-16',	5	,	2	);
insert 	into 	`Order`	values	(	104	,	1500	,'2021-10-05',	1	,	1	);
insert 	into 	`Order`	values	(	105	,	3000	,'2021-08-16',	4	,	3	);
insert 	into 	`Order`	values	(	110	,	2500	,'2021-09-10',	2	,	4	);
insert 	into 	`order`	values	(	106	,	1450	,'2021-08-18',	1	,	9	);
insert 	into 	`order`	values	(	107	,	789	,'2021-09-01',	3	,	7	);
insert 	into 	`order`	values	(	108	,	780	,'2021-09-07',	5	,	6	);
insert 	into 	`order`	values	(	109	,	3000	,'2021-00-10',	5	,	3	);
insert 	into 	`order`	values	(	111	,	1000	,'2021-09-15',	4	,	5	);
insert 	into 	`order`	values	(	112	,	789	,'2021-09-16',	4	,	7	);
insert 	into 	`order`	values	(	113	,	31000	,'2021-09-16',	1	,	8	);
insert 	into 	`order`	values	(	114	,	1000	,'2021-09-16',	3	,	5	);
insert 	into 	`order`	values	(	115	,	3000	,'2021-09-16',	5	,	3	);
insert 	into 	`order`	values	(	116	,	99	,'2021-09-17',	2	,	14	);


insert	into	rating	values	(	1	,	101	,	4);
insert	into	rating	values	(	2	,	102	,	3);
insert	into	rating	values	(	3	,	103	,	1);
insert	into	rating	values	(	4	,	104	,	2);
insert	into	rating	values	(	5	,	105	,	4);
insert	into	rating	values	(	6	,	106	,	3);
insert	into	rating	values	(	7	,	107	,	4);
insert	into	rating	values	(	8	,	108	,	4);
insert	into	rating	values	(	9	,	109	,	3);
insert	into	rating	values	(	10	,	110	,	5);
insert	into	rating	values	(	11	,	111	,	3);
insert	into	rating	values	(	12	,	112	,	4);
insert	into	rating	values	(	13	,	113	,	2);
insert	into	rating	values	(	14	,	114	,	1);
insert	into	rating	values	(	15	,	115	,	1);
insert	into	rating	values	(	16	,	116	,	0);


/*  Q 3) Display the total number of customers based on gender who have placed orders of worth at least Rs.3000*/
SELECT 
    COUNT(CUS_ID), CUS_GENDER
FROM
    customer
WHERE
    Cus_id = ANY (SELECT 
            cus_Id
        FROM
            `order`
        GROUP BY CUS_ID
        HAVING SUM(ORD_AMOUNT) >= 3000)
GROUP BY CUS_GENDER;

/*  Q 4) Display all the orders along with product name ordered by a customer having Customer_Id=2 */
SELECT 
    PRO_ID, Pro_Name
FROM
    product
WHERE
    PRO_ID = ANY (SELECT 
            pro_id
        FROM
            supplier_pricing
        WHERE
            PRICING_ID = ANY (SELECT 
                    PRICING_ID
                FROM
                    `Order`
                WHERE
                    CUS_ID = 2));

/*  Q 5) Display the Supplier details who can supply more than one product */
SELECT 
    s.SUPP_ID,
    s.SUPP_NAME,
    s.SUPP_CITY,
    s.SUPP_PHONE,
    COUNT(sp.PRO_ID) distinct_product_count
FROM
    E_commerce.supplier_pricing sp,
    E_commerce.supplier s
WHERE
    s.SUPP_ID = sp.SUPP_ID
GROUP BY sp.SUPP_ID
HAVING COUNT(sp.PRO_ID) > 1;


/*  Q 6) Find the least expensive product from each category and print the table with category id, name, product name and price of the product */
SELECT 
    C.CAT_ID, C.CAT_NAME, p.PRO_NAME, sp.SUPP_PRICE
FROM
    category AS C
        INNER JOIN
    product AS p ON C.CAT_ID = p.CAT_ID
        INNER JOIN
    supplier_pricing AS sp ON sp.PRO_ID = p.PRO_ID
GROUP BY C.CAT_NAME
HAVING MIN(sp.SUPP_PRICE);


/*  Q 7) Display the Id and Name of the Product ordered after “2021-10-05” */
select PRO_ID ,pro_name from product where PRO_ID=any(select pro_Id from supplier_pricing where PRICING_ID=any(select pricing_id from `order` where Ord_date>'2021-10-05'));

/*  Q 8) Display customer name and gender whose names start or end with character 'A'. */
select cus_name ,cus_gender from customer where cus_name like 'a%' or CUS_NAME like '%a';


/*  Q 9) Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”.*/
Delimiter $$

create procedure display() 
begin 
SELECT s.SUPP_ID, s.SUPP_NAME, r.RAT_RATSTARS ,
CASE WHEN r.RAT_RATSTARS = 5 THEN  'Excellent Service'
WHEN r.RAT_RATSTARS>4 THEN 'Good Service'
WHEN r.RAT_RATSTARS>2 THEN 'Average Service'
ELSE 'Poor Service' END AS Type_of_Service
FROM  E_commerce.rating r, E_commerce.`order` o, E_commerce.supplier_pricing sp,
 E_commerce.supplier s
WHERE o.ORD_ID = r.ORD_ID
AND sp.PRICING_ID = o.PRICING_ID
AND s.SUPP_ID = sp.SUPP_ID;
end $$

Delimiter ;

call display()
