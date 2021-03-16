// DEGREES OF SEPARATION - random ID -----------------

// ONE DEGREE -----------------------

// Started streaming 19 records after 5 ms and completed after 11 ms.
MATCH (people {ID: 10005815})-[:KNOWS]-(x) return x.ID;


-- TWO DEGREES -----------------------

// Started streaming 2174 records after 5 ms and completed after 14 ms, displaying first 1000 rows.
MATCH (people {ID: 10005815})-[:KNOWS*1..2]-(x) RETURN DISTINCT x.ID;


-- THREE DEGREES -----------------------

// Started streaming 9660 records after 9 ms and completed after 17 ms, displaying first 1000 rows.
MATCH (people {ID: 10005815})-[:KNOWS*1..3]-(x) RETURN DISTINCT x.ID;

-- FOUR DEGREES

// Started streaming 12743 records after 9 ms and completed after 110 ms, displaying first 1000 rows.
MATCH (people {ID: 10005815})-[:KNOWS*1..4]-(x) RETURN DISTINCT x.ID;


-- DEGREES OF SEPARATION - all males ----------------------

-- ORIGINAL SET -----------------------

// Started streaming 12706 records after 7 ms and completed after 8 ms, displaying first 1000 rows.
MATCH (people {gender: 'male'})
RETURN people.ID;


-- ONE DEGREE -----------------------

// 12919 rows available after 58 ms, consumed after another 221 ms
MATCH (people {gender: 'male'})-[:KNOWS]-(x) RETURN DISTINCT x.ID;

-- TWO DEGREES -----------------------

// Started streaming 13014 records after 11 ms and completed after 17518 ms, displaying first 1000 rows.
MATCH (people {gender: 'male'})-[:KNOWS*1..2]-(x) RETURN DISTINCT x.ID;


-- THREE DEGREES -----------------------

// Started streaming 13014 records after 9 ms and completed after 312119 ms, displaying first 1000 rows.
MATCH (people {gender: 'male'})-[:KNOWS*1..3]-(x) RETURN DISTINCT x.ID;



