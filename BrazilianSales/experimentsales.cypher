// Return all review scores from customers from state SP


// Completed after 368 ms, displaying first 1000 rows.
// Completed after 185 ms, displaying first 1000 rows.
// Completed after 201 ms, displaying first 1000 rows.
// Completed after 192 ms, displaying first 1000 rows.
// Completed after 200 ms, displaying first 1000 rows.
MATCH (Customer {state: 'SP'})-[:ORDERS]-(o)-[:ISREVIEWED]-(r) 
RETURN r.reviewScore;

// Completed after 15 ms, displaying first 1000 rows.
// Completed after 23 ms, displaying first 1000 rows.
// Completed after 12 ms, displaying first 1000 rows.
// Completed after 12 ms, displaying first 1000 rows.
// Completed after 12 ms, displaying first 1000 rows.
MATCH (Customer {state: 'SP'})-[:ORDERS]-(o)-[:ISREVIEWED]-(r) 
SET r.reviewScore = 4
RETURN r.reviewScore;

// Started streaming 99441 records after 3 ms and completed after 7 ms, displaying first 1000 rows.
MATCH (o:Orders) RETURN o;

// Started streaming 99441 records after 10 ms and completed after 12 ms, displaying first 1000 rows.
MATCH (o:Orders) RETURN o.orderID;

// 14 ms
MATCH (o:Orders)-[:ORDERS]-(Customer {state: 'SP'}) 
RETURN o.orderID;

// 23 ms
MATCH (oI)-[:ISIN]-(o:Orders)-[:ORDERS]-(Customer {state: 'SP'})
WHERE oI.price > 60
RETURN o.orderID;

// 27 ms
MATCH (Seller {sellerState: 'SP'})-[:SOLDBY]-(oI)
-[:ISIN]-(o:Orders)-[:ORDERS]-(Customer {state: 'SP'})
WHERE oI.price > 60
RETURN o.orderID;


// 34 ms
MATCH (Seller {sellerState: 'SP'})-[:SOLDBY]-(oI)-[:ISIN]-(o:Orders)-[:ORDERS]-(Customer {state: 'SP'})
MATCH (oI)-[:ISIN]-(p:Products)
WHERE oI.price > 60 AND p.productWeightG > 60
RETURN o.orderID;

