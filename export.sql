--------------------------------------------------------
--  File created - Thursday-November-28-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BRANDS
--------------------------------------------------------

  CREATE TABLE "SWGILANI"."BRANDS" 
   (	"BRAND_ID" NUMBER(*,0), 
	"BRAND_NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "SWGILANI"."CATEGORY" 
   (	"CATEGORY_ID" NUMBER(*,0), 
	"CATEGORY_TYPE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "SWGILANI"."CUSTOMERS" 
   (	"CUSTOMER_ID" NUMBER(*,0), 
	"CUSTOMER_NAME" VARCHAR2(255 BYTE), 
	"CUSTOMER_EMAILADDRESS" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Table ONLINE_STORE
--------------------------------------------------------

  CREATE TABLE "SWGILANI"."ONLINE_STORE" 
   (	"ONLINESTORE_ID" NUMBER(*,0), 
	"ONLINESTORE_WEBSITE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Table PAYMENT_METHOD
--------------------------------------------------------

  CREATE TABLE "SWGILANI"."PAYMENT_METHOD" 
   (	"PAYMENT_ID" VARCHAR2(255 BYTE), 
	"PAYMENT_INSTORE" VARCHAR2(255 BYTE), 
	"PAYMENT_ONLINE" LONG
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Table STORE
--------------------------------------------------------

  CREATE TABLE "SWGILANI"."STORE" 
   (	"STORE_ID" NUMBER(*,0), 
	"STORE_LOCATION" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Table STYLE
--------------------------------------------------------

  CREATE TABLE "SWGILANI"."STYLE" 
   (	"STYLE_ID" NUMBER(*,0), 
	"STYLE_SIZE" VARCHAR2(255 BYTE), 
	"STYLE_NAME" VARCHAR2(255 BYTE), 
	"STLYE_COLOR" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "SWGILANI"."PRODUCT" 
   (	"PRODUCT_ID" NUMBER(*,0), 
	"PRODUCT_PRICE" NUMBER(*,0), 
	"PRODUCT_TYPE" VARCHAR2(255 BYTE), 
	"PRODUCT_NAME" VARCHAR2(255 BYTE), 
	"PRODUCT_LOCATION" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Table SUPPLIER
--------------------------------------------------------

  CREATE TABLE "SWGILANI"."SUPPLIER" 
   (	"SUPPLIER_ID" NUMBER(*,0), 
	"SUPPLIER_LOCATION" VARCHAR2(255 BYTE), 
	"SUPPLIER_PRODUCTAMOUNT" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Table ORDER_ITEMS
--------------------------------------------------------

  CREATE TABLE "SWGILANI"."ORDER_ITEMS" 
   (	"ORDERITEMS_ID" NUMBER(*,0), 
	"ORDERITEMS_STATUS" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "SWGILANI"."ORDERS" 
   (	"ORDER_ID" NUMBER(*,0), 
	"ORDER_NUMBER" NUMBER(*,0), 
	"ORDER_HOLDSTATUS" VARCHAR2(255 BYTE), 
	"ORDER_DETAILS" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for View BRANDS_FILTER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SWGILANI"."BRANDS_FILTER" ("BRAND_ID", "BRAND_NAME") AS 
  SELECT brand_id,brand_name
    
FROM brands
Where not (brand_name = 'Gucci') and not (brand_name = 'Levis')
;
--------------------------------------------------------
--  DDL for View LIGHT_COLORS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SWGILANI"."LIGHT_COLORS" ("STYLE_ID", "STYLE_SIZE", "STYLE_NAME", "STLYE_COLOR") AS 
  SELECT "STYLE_ID","STYLE_SIZE","STYLE_NAME","STLYE_COLOR" FROM style 
WHERE stlye_color LIKE 'Light%'
;
--------------------------------------------------------
--  DDL for View CHEAP_ITEMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SWGILANI"."CHEAP_ITEMS" ("PRODUCT_ID", "PRODUCT_PRICE", "PRODUCT_NAME", "PRODUCT_LOCATION") AS 
  SELECT "PRODUCT_ID","PRODUCT_PRICE","PRODUCT_NAME","PRODUCT_LOCATION" FROM product
WHERE "PRODUCT_PRICE" BETWEEN 0 AND 30
;
--------------------------------------------------------
--  DDL for View SHIPPED_ITEMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SWGILANI"."SHIPPED_ITEMS" ("ORDERITEMS_ID", "ORDERITEMS_STATUS") AS 
  SELECT orderItems_ID,orderItems_Status
FROM order_items
WHERE orderItems_Status = 'shipped'
;
--------------------------------------------------------
--  DDL for View ORDERSAMOUNT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SWGILANI"."ORDERSAMOUNT" ("ORDER_ID", "ORDER_NUMBER", "CUSTOMER_NAME", "CUSTOMER_EMAILADDRESS") AS 
  SELECT order_id, order_number , customer_name, customer_emailaddress
FROM orders join customers
ON order_id = customer_id
WHERE order_number >=2
;
--------------------------------------------------------
--  DDL for View TORONTO_STORES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SWGILANI"."TORONTO_STORES" ("STORE_ID", "STORE_LOCATION") AS 
  SELECT "STORE_ID","STORE_LOCATION"
FROM store
WHERE not(store_location = 'Toronto')
ORDER BY store_location DESC
;
--------------------------------------------------------
--  DDL for View Store_Order
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SWGILANI"."Store_Order" ("ORDER_ID", "ORDER_NUMBER", "CUSTOMER_NAME", "CUSTOMER_EMAILADDRESS") AS 
  SELECT order_id, order_number , customer_name, customer_emailaddress, store_location
FROM
orders join customers
orders join store
on  order_id = store_id
ON order_id = customer_id
WHERE order_number >=2 and not (store_location = 'Toronto')
;
--------------------------------------------------------
--  DDL for View multiple_orders
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SWGILANI"."multiple_orders" ("ORDER_ID", "ORDER_NUMBER") AS 
  SELECT "ORDER_ID","ORDER_NUMBER" FROM "ORDERS"
WHERE "PRODUCT_PRICE" BETWEEN 0 AND 30
;
REM INSERTING into SWGILANI.BRANDS
SET DEFINE OFF;
Insert into SWGILANI.BRANDS (BRAND_ID,BRAND_NAME) values (1,'Adidas');
Insert into SWGILANI.BRANDS (BRAND_ID,BRAND_NAME) values (422,'Levis');
Insert into SWGILANI.BRANDS (BRAND_ID,BRAND_NAME) values (15,'Gucci');
Insert into SWGILANI.BRANDS (BRAND_ID,BRAND_NAME) values (152,'Calvin Klein');
Insert into SWGILANI.BRANDS (BRAND_ID,BRAND_NAME) values (3,'Aeropostale');
REM INSERTING into SWGILANI.CATEGORY
SET DEFINE OFF;
Insert into SWGILANI.CATEGORY (CATEGORY_ID,CATEGORY_TYPE) values (1,'Hoodies');
Insert into SWGILANI.CATEGORY (CATEGORY_ID,CATEGORY_TYPE) values (2,'T-shirts');
Insert into SWGILANI.CATEGORY (CATEGORY_ID,CATEGORY_TYPE) values (3,'Joggers');
Insert into SWGILANI.CATEGORY (CATEGORY_ID,CATEGORY_TYPE) values (4,'Pants');
Insert into SWGILANI.CATEGORY (CATEGORY_ID,CATEGORY_TYPE) values (5,'Sweatshirt');
Insert into SWGILANI.CATEGORY (CATEGORY_ID,CATEGORY_TYPE) values (6,'Jackets');
REM INSERTING into SWGILANI.CUSTOMERS
SET DEFINE OFF;
Insert into SWGILANI.CUSTOMERS (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (42132,'wqe','wqe dsa');
Insert into SWGILANI.CUSTOMERS (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (6,'bob','lee');
Insert into SWGILANI.CUSTOMERS (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (50,'Karol','kk@gmail.com');
Insert into SWGILANI.CUSTOMERS (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (57,'bill','gmail@gmail');
Insert into SWGILANI.CUSTOMERS (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (1,'Johnny','johnnyf@gmail.com');
Insert into SWGILANI.CUSTOMERS (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (86,'Ronald','roja@gmail.com');
Insert into SWGILANI.CUSTOMERS (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (62,'Billy','bob@gmail.com');
Insert into SWGILANI.CUSTOMERS (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (2,'Tom','tomp@gmail.com');
Insert into SWGILANI.CUSTOMERS (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (3,'Wasiq','iwasiqiqbal@gmail.com');
Insert into SWGILANI.CUSTOMERS (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (4,'Hud','mhudbundhoo@gmail.com');
Insert into SWGILANI.CUSTOMERS (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (56,null,null);
REM INSERTING into SWGILANI.ONLINE_STORE
SET DEFINE OFF;
Insert into SWGILANI.ONLINE_STORE (ONLINESTORE_ID,ONLINESTORE_WEBSITE) values (1,'RetailStore.com');
Insert into SWGILANI.ONLINE_STORE (ONLINESTORE_ID,ONLINESTORE_WEBSITE) values (11,'adidas.ca');
Insert into SWGILANI.ONLINE_STORE (ONLINESTORE_ID,ONLINESTORE_WEBSITE) values (12,'gucci.com');
Insert into SWGILANI.ONLINE_STORE (ONLINESTORE_ID,ONLINESTORE_WEBSITE) values (135,'levis.ca');
Insert into SWGILANI.ONLINE_STORE (ONLINESTORE_ID,ONLINESTORE_WEBSITE) values (154,'calvinklein.ca');
REM INSERTING into SWGILANI.PAYMENT_METHOD
SET DEFINE OFF;
Insert into SWGILANI.PAYMENT_METHOD (PAYMENT_ID,PAYMENT_INSTORE,PAYMENT_ONLINE) values ('Paypal','Cash',null);
REM INSERTING into SWGILANI.STORE
SET DEFINE OFF;
Insert into SWGILANI.STORE (STORE_ID,STORE_LOCATION) values (2,'Mississauga');
Insert into SWGILANI.STORE (STORE_ID,STORE_LOCATION) values (3,'Brampton');
Insert into SWGILANI.STORE (STORE_ID,STORE_LOCATION) values (4,'Richmond Hill');
Insert into SWGILANI.STORE (STORE_ID,STORE_LOCATION) values (5,'Vancouver');
Insert into SWGILANI.STORE (STORE_ID,STORE_LOCATION) values (1,'Toronto');
Insert into SWGILANI.STORE (STORE_ID,STORE_LOCATION) values (6,'Toronto');
Insert into SWGILANI.STORE (STORE_ID,STORE_LOCATION) values (7,'Toronto');
Insert into SWGILANI.STORE (STORE_ID,STORE_LOCATION) values (10,'Toronto');
REM INSERTING into SWGILANI.STYLE
SET DEFINE OFF;
Insert into SWGILANI.STYLE (STYLE_ID,STYLE_SIZE,STYLE_NAME,STLYE_COLOR) values (1,'34','Formal','Black');
Insert into SWGILANI.STYLE (STYLE_ID,STYLE_SIZE,STYLE_NAME,STLYE_COLOR) values (2,'12','Semi-Formal','Dark Blue');
Insert into SWGILANI.STYLE (STYLE_ID,STYLE_SIZE,STYLE_NAME,STLYE_COLOR) values (3,'31','Casual','Green');
Insert into SWGILANI.STYLE (STYLE_ID,STYLE_SIZE,STYLE_NAME,STLYE_COLOR) values (4,'34','Old School','Blue');
Insert into SWGILANI.STYLE (STYLE_ID,STYLE_SIZE,STYLE_NAME,STLYE_COLOR) values (7,'20','Casual','Light Red');
Insert into SWGILANI.STYLE (STYLE_ID,STYLE_SIZE,STYLE_NAME,STLYE_COLOR) values (8,'123','Formal','Light Green');
Insert into SWGILANI.STYLE (STYLE_ID,STYLE_SIZE,STYLE_NAME,STLYE_COLOR) values (9,'13','Vintage','Light Purple');
Insert into SWGILANI.STYLE (STYLE_ID,STYLE_SIZE,STYLE_NAME,STLYE_COLOR) values (5,'23','Casual','Black');
Insert into SWGILANI.STYLE (STYLE_ID,STYLE_SIZE,STYLE_NAME,STLYE_COLOR) values (6,'23','Futuristic','Yellow');
REM INSERTING into SWGILANI.PRODUCT
SET DEFINE OFF;
Insert into SWGILANI.PRODUCT (PRODUCT_ID,PRODUCT_PRICE,PRODUCT_TYPE,PRODUCT_NAME,PRODUCT_LOCATION) values (1,20,'Hoodie','Pullover hoodie','Instore');
Insert into SWGILANI.PRODUCT (PRODUCT_ID,PRODUCT_PRICE,PRODUCT_TYPE,PRODUCT_NAME,PRODUCT_LOCATION) values (2,129,'Jacket','Formal Jacket','Instore');
Insert into SWGILANI.PRODUCT (PRODUCT_ID,PRODUCT_PRICE,PRODUCT_TYPE,PRODUCT_NAME,PRODUCT_LOCATION) values (3,30,'Joggers','Jogger pants','Instore');
Insert into SWGILANI.PRODUCT (PRODUCT_ID,PRODUCT_PRICE,PRODUCT_TYPE,PRODUCT_NAME,PRODUCT_LOCATION) values (3,99,'Pants','Yoga pants','Instore');
Insert into SWGILANI.PRODUCT (PRODUCT_ID,PRODUCT_PRICE,PRODUCT_TYPE,PRODUCT_NAME,PRODUCT_LOCATION) values (4,10,'Shirt','Black Tee','Instore');
REM INSERTING into SWGILANI.SUPPLIER
SET DEFINE OFF;
Insert into SWGILANI.SUPPLIER (SUPPLIER_ID,SUPPLIER_LOCATION,SUPPLIER_PRODUCTAMOUNT) values (324,'Washington',46);
Insert into SWGILANI.SUPPLIER (SUPPLIER_ID,SUPPLIER_LOCATION,SUPPLIER_PRODUCTAMOUNT) values (353,'Texas',194);
Insert into SWGILANI.SUPPLIER (SUPPLIER_ID,SUPPLIER_LOCATION,SUPPLIER_PRODUCTAMOUNT) values (116,'Ohio',56);
Insert into SWGILANI.SUPPLIER (SUPPLIER_ID,SUPPLIER_LOCATION,SUPPLIER_PRODUCTAMOUNT) values (199,'Montreal',53);
Insert into SWGILANI.SUPPLIER (SUPPLIER_ID,SUPPLIER_LOCATION,SUPPLIER_PRODUCTAMOUNT) values (323,'Toronto',24);
REM INSERTING into SWGILANI.BRANDS_FILTER
SET DEFINE OFF;
Insert into SWGILANI.BRANDS_FILTER (BRAND_ID,BRAND_NAME) values (1,'Adidas');
Insert into SWGILANI.BRANDS_FILTER (BRAND_ID,BRAND_NAME) values (152,'Calvin Klein');
Insert into SWGILANI.BRANDS_FILTER (BRAND_ID,BRAND_NAME) values (3,'Aeropostale');
REM INSERTING into SWGILANI.ORDER_ITEMS
SET DEFINE OFF;
Insert into SWGILANI.ORDER_ITEMS (ORDERITEMS_ID,ORDERITEMS_STATUS) values (141,'processing');
Insert into SWGILANI.ORDER_ITEMS (ORDERITEMS_ID,ORDERITEMS_STATUS) values (13,'processing');
Insert into SWGILANI.ORDER_ITEMS (ORDERITEMS_ID,ORDERITEMS_STATUS) values (19,'processing');
Insert into SWGILANI.ORDER_ITEMS (ORDERITEMS_ID,ORDERITEMS_STATUS) values (22,'shipped');
Insert into SWGILANI.ORDER_ITEMS (ORDERITEMS_ID,ORDERITEMS_STATUS) values (121,'delivered');
Insert into SWGILANI.ORDER_ITEMS (ORDERITEMS_ID,ORDERITEMS_STATUS) values (636,'shipped');
REM INSERTING into SWGILANI.ORDERS
SET DEFINE OFF;
Insert into SWGILANI.ORDERS (ORDER_ID,ORDER_NUMBER,ORDER_HOLDSTATUS,ORDER_DETAILS) values (1,3,'In Stock','In Progress');
Insert into SWGILANI.ORDERS (ORDER_ID,ORDER_NUMBER,ORDER_HOLDSTATUS,ORDER_DETAILS) values (2,1,'In Stock','Shipped');
Insert into SWGILANI.ORDERS (ORDER_ID,ORDER_NUMBER,ORDER_HOLDSTATUS,ORDER_DETAILS) values (3,4,'In Stock','Shipped');
Insert into SWGILANI.ORDERS (ORDER_ID,ORDER_NUMBER,ORDER_HOLDSTATUS,ORDER_DETAILS) values (4,2,'In Stock','Delivered');
Insert into SWGILANI.ORDERS (ORDER_ID,ORDER_NUMBER,ORDER_HOLDSTATUS,ORDER_DETAILS) values (5,3,'In Stock','In Progress');
REM INSERTING into SWGILANI.LIGHT_COLORS
SET DEFINE OFF;
Insert into SWGILANI.LIGHT_COLORS (STYLE_ID,STYLE_SIZE,STYLE_NAME,STLYE_COLOR) values (7,'20','Casual','Light Red');
Insert into SWGILANI.LIGHT_COLORS (STYLE_ID,STYLE_SIZE,STYLE_NAME,STLYE_COLOR) values (8,'123','Formal','Light Green');
Insert into SWGILANI.LIGHT_COLORS (STYLE_ID,STYLE_SIZE,STYLE_NAME,STLYE_COLOR) values (9,'13','Vintage','Light Purple');
REM INSERTING into SWGILANI.CHEAP_ITEMS
SET DEFINE OFF;
Insert into SWGILANI.CHEAP_ITEMS (PRODUCT_ID,PRODUCT_PRICE,PRODUCT_NAME,PRODUCT_LOCATION) values (1,20,'Pullover hoodie','Instore');
Insert into SWGILANI.CHEAP_ITEMS (PRODUCT_ID,PRODUCT_PRICE,PRODUCT_NAME,PRODUCT_LOCATION) values (3,30,'Jogger pants','Instore');
Insert into SWGILANI.CHEAP_ITEMS (PRODUCT_ID,PRODUCT_PRICE,PRODUCT_NAME,PRODUCT_LOCATION) values (4,10,'Black Tee','Instore');
REM INSERTING into SWGILANI.SHIPPED_ITEMS
SET DEFINE OFF;
Insert into SWGILANI.SHIPPED_ITEMS (ORDERITEMS_ID,ORDERITEMS_STATUS) values (22,'shipped');
Insert into SWGILANI.SHIPPED_ITEMS (ORDERITEMS_ID,ORDERITEMS_STATUS) values (636,'shipped');
REM INSERTING into SWGILANI.ORDERSAMOUNT
SET DEFINE OFF;
Insert into SWGILANI.ORDERSAMOUNT (ORDER_ID,ORDER_NUMBER,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (1,3,'Johnny','johnnyf@gmail.com');
Insert into SWGILANI.ORDERSAMOUNT (ORDER_ID,ORDER_NUMBER,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (3,4,'Wasiq','iwasiqiqbal@gmail.com');
Insert into SWGILANI.ORDERSAMOUNT (ORDER_ID,ORDER_NUMBER,CUSTOMER_NAME,CUSTOMER_EMAILADDRESS) values (4,2,'Hud','mhudbundhoo@gmail.com');
REM INSERTING into SWGILANI.TORONTO_STORES
SET DEFINE OFF;
Insert into SWGILANI.TORONTO_STORES (STORE_ID,STORE_LOCATION) values (5,'Vancouver');
Insert into SWGILANI.TORONTO_STORES (STORE_ID,STORE_LOCATION) values (4,'Richmond Hill');
Insert into SWGILANI.TORONTO_STORES (STORE_ID,STORE_LOCATION) values (2,'Mississauga');
Insert into SWGILANI.TORONTO_STORES (STORE_ID,STORE_LOCATION) values (3,'Brampton');
REM INSERTING into SWGILANI."Store_Order"
SET DEFINE OFF;
REM INSERTING into SWGILANI."multiple_orders"
SET DEFINE OFF;
