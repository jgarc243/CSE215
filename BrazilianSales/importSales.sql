-- CREATE TABLE
-- Query returned successfully in 41 msec.
CREATE TABLE Customer (
	ID VARCHAR(50) PRIMARY KEY, 
	uniqueID VARCHAR(50), 
	zipCode INT,
	city VARCHAR(50),
	state VARCHAR(2)
);

-- COPY 99441
-- Query returned successfully in 2 secs 937 msec.

COPY Customer
FROM '/Users/jackie/Desktop/cse215_cp/BrazilianSales/olist_customers_dataset.csv'
DELIMITER ','
CSV HEADER;


-- CREATE TABLE
-- Query returned successfully in 49 msec.
CREATE TABLE OrderItems (
	ID VARCHAR(50), 
	orderItemID INT,
	productID VARCHAR(50), 
	sellerID VARCHAR(50),
	shippingLimitDate TIMESTAMP,
	price DECIMAL(6, 2),
	freightValue DECIMAL(6, 2),
	PRIMARY KEY (ID, orderItemID)
);

-- COPY 112650
-- Query returned successfully in 1 secs 943 msec.
COPY OrderItems
FROM '/Users/jackie/Desktop/cse215_cp/BrazilianSales/olist_order_items_dataset.csv'
DELIMITER ','
CSV HEADER;


-- CREATE TABLE
-- Query returned successfully in 48 msec.
CREATE TABLE OrderPayments (
	orderID VARCHAR(50),
	paymentSequential INT,
	paymentType VARCHAR(50), 
	paymentInstallments INT,
	paymentValue DECIMAL(7, 2),
	PRIMARY KEY (orderID, paymentSequential)
);

-- COPY 103886
-- Query returned successfully in 2 secs 642 msec.
COPY OrderPayments
FROM '/Users/jackie/Desktop/cse215_cp/BrazilianSales/olist_order_payments_dataset.csv'
DELIMITER ','
CSV HEADER;

-- CREATE TABLE
-- Query returned successfully in 43 msec.
CREATE TABLE OrderReviews (
	reviewID VARCHAR(50),
	orderID VARCHAR(50),
	reviewScore INT,
	reviewCommentTitle VARCHAR(100),
	reviewCommentMessage VARCHAR(500),
	reviewCreationDate TIMESTAMP,
	reviewAnswerTimestamp TIMESTAMP
);

-- COPY 99985
-- Query returned successfully in 620 msec.
COPY OrderReviews
FROM '/Users/jackie/Desktop/cse215_cp/BrazilianSales/olist_order_reviews_dataset.csv'
DELIMITER ','
CSV HEADER;

-- CREATE TABLE
-- Query returned successfully in 47 msec.
CREATE TABLE Orders (
	orderID VARCHAR(50) PRIMARY KEY,
	customerID VARCHAR(50),
	orderStatus VARCHAR(50),
	orderPurchaseTimestamp TIMESTAMP,
	orderApprovedAt TIMESTAMP,
	orderDeliveredCarrierDate TIMESTAMP,
	orderDeliveredCustomerDate TIMESTAMP,
	orderEstimatedDeliveryTime TIMESTAMP

);

-- COPY 99441
-- Query returned successfully in 2 secs 961 msec.
COPY Orders
FROM '/Users/jackie/Desktop/cse215_cp/BrazilianSales/olist_orders_dataset.csv'
DELIMITER ','
CSV HEADER;

-- CREATE TABLE
-- Query returned successfully in 45 msec.
CREATE TABLE Products (
	productID VARCHAR(50) PRIMARY KEY,
	productCategoryName VARCHAR(50),
	productNameLength INT,
	productDescriptionLength INT,
	productPhotosQuantity INT,
	productWeightG INT,
	productLengthCM INT,
	productHeightCM INT,
	productWidthCM INT
);

-- COPY 32951
-- Query returned successfully in 868 msec.
COPY Products
FROM '/Users/jackie/Desktop/cse215_cp/BrazilianSales/olist_products_dataset.csv'
DELIMITER ','
CSV HEADER;

-- CREATE TABLE
-- Query returned successfully in 64 msec.
CREATE TABLE Sellers (
	sellertID VARCHAR(50) PRIMARY KEY,
	sellerZipCodePrefix INT, 
	sellerCity VARCHAR(50),
	sellerState VARCHAR(2)
);

-- COPY 3095
-- Query returned successfully in 135 msec.
COPY Sellers
FROM '/Users/jackie/Desktop/cse215_cp/BrazilianSales/olist_sellers_dataset.csv'
DELIMITER ','
CSV HEADER;


