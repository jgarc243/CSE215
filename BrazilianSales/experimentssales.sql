-- Return all review scores from customers from state SP

-- Successfully run. Total query runtime: 399 msec.
SELECT r.reviewScore
FROM OrderReviews r, Orders o, Customer c
WHERE  o.orderID = r.orderID
AND c.ID = o.customerID
AND c.state = 'SP';

-- Successfully run. Total query runtime: 221 msec.
-- Successfully run. Total query runtime: 231 msec.
-- Successfully run. Total query runtime: 244 msec.
-- Successfully run. Total query runtime: 240 msec.
-- Successfully run. Total query runtime: 230 msec.
SELECT r.reviewScore
FROM OrderReviews r
WHERE EXISTS (SELECT * 
                FROM Orders o, Customer c
                WHERE o.orderID = r.orderID
				AND c.ID = o.customerID
				AND c.state = 'SP');

-- Query returned successfully in 639 msec.
-- Query returned successfully in 495 msec.
-- Query returned successfully in 455 msec.
-- Query returned successfully in 470 msec.
-- Query returned successfully in 473 msec.
UPDATE OrderReviews
SET reviewScore = 4
WHERE EXISTS (SELECT * 
                FROM Orders o, Customer c
                WHERE o.orderID = OrderReviews.orderID
				AND c.ID = o.customerID
				AND c.state = 'SP');
				

-- Successfully run. Total query runtime: 405 msec.
-- 99441 rows affected.
SELECT * 
FROM Orders;

-- Successfully run. Total query runtime: 101 msec.
SELECT Orders.orderID
FROM Orders;

-- Successfully run. Total query runtime: 222 msec.
SELECT o.orderID
FROM Orders o INNER JOIN Customer c on o.customerID = c.ID
WHERE c.state = 'SP';

-- Successfully run. Total query runtime: 261 msec.
SELECT o.orderID
FROM Orders o INNER JOIN Customer c on o.customerID = c.ID
INNER JOIN OrderItems oI on o.orderID = oI.ID
WHERE c.state = 'SP'
AND oI.price > 60;

-- Successfully run. Total query runtime: 296 msec.
SELECT o.orderID
FROM Orders o INNER JOIN Customer c on o.customerID = c.ID
INNER JOIN OrderItems oI on o.orderID = oI.ID
INNER JOIN Sellers s on s.sellertID = oI.sellerID
WHERE c.state = 'SP'
AND oI.price > 60
AND s.sellerState = 'SP';

-- Successfully run. Total query runtime: 319 msec.
SELECT o.orderID
FROM Orders o INNER JOIN Customer c on o.customerID = c.ID
INNER JOIN OrderItems oI on o.orderID = oI.ID
INNER JOIN Sellers s on s.sellertID = oI.sellerID
INNER JOIN Products p on p.productID = oI.productID
WHERE c.state = 'SP'
AND oI.price > 60
AND s.sellerState = 'SP'
AND p.productWeightG > 60;