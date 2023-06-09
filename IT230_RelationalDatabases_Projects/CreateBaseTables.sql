USE MSIS230;

DROP TABLE IF EXISTS VENDORS;

CREATE TABLE IF NOT EXISTS VENDORS
(
VENDOR_ID VARCHAR(10) PRIMARY KEY,
VENDOR_FNAME VARCHAR(25) NOT NULL,
VENDOR_LNAME VARCHAR(50) NOT NULL,
VENDOR_STATUS CHAR(2),
VENDOR_ONBOARD DATE
);

DROP TABLE IF EXISTS CUSTOMER_ORDERS;

CREATE TABLE IF NOT EXISTS CUSTOMER_ORDERS
(
CUSTOMERS_ID VARCHAR(10),
ORDER_ID VARCHAR(10),
CONSTRAINT PK_CUSTOMERORDER PRIMARY KEY (CUSTOMERS_ID, ORDER_ID)
);

DROP TABLE IF EXISTS VENDOR_STATE;

CREATE TABLE IF NOT EXISTS VENDOR_STATE
(
VENDOR_ID VARCHAR (10) PRIMARY KEY,
VENDOR_STATE CHAR (2) UNIQUE
)








