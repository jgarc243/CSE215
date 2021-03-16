-- DEGREES OF SEPARATION - random ID -----------------

-- ONE DEGREES -----------------------

-- Successfully run. Total query runtime: 77 msec.
-- 19 rows affected.
SELECT p.ID
FROM People p, Relationships r
WHERE (p.ID = r.person2ID AND r.person1ID = 10005815)
OR (p.ID = r.person1ID AND r.person2ID = 10005815);

-- TWO DEGREES -----------------------

-- CREATE VIEW
-- Query returned successfully in 48 msec.
CREATE VIEW r1 AS (SELECT p.ID
			FROM People p, Relationships r
			WHERE (p.ID = r.person2ID AND r.person1ID = 10005815)
		   	OR (p.ID = r.person1ID AND r.person2ID = 10005815));

-- Successfully run. Total query runtime: 5 secs 993 msec.
2174 rows affected.
SELECT DISTINCT p.ID
FROM People p, Relationships r
WHERE (p.ID = r.person2ID AND r.person1ID IN (SELECT * FROM r1))
OR (p.ID = r.person1ID AND r.person2ID IN (SELECT * FROM r1));

-- THREE DEGREES -----------------------

-- CREATE VIEW
--  Query returned successfully in 43 msec.
CREATE VIEW r2 AS (
SELECT DISTINCT p.ID
FROM People p, Relationships r
WHERE (p.ID = r.person2ID AND r.person1ID IN (SELECT * FROM r1))
OR (p.ID = r.person1ID AND r.person2ID IN (SELECT * FROM r1)) );

-- Successfully run. Total query runtime: 2 min 50 secs.
-- 9660 rows affected.
SELECT DISTINCT p.ID
FROM People p, Relationships r
WHERE (p.ID = r.person2ID AND r.person1ID IN (SELECT * FROM r2))
OR (p.ID = r.person1ID AND r.person2ID IN (SELECT * FROM r2));


-- FOUR DEGREES

-- CREATE VIEW
-- Query returned successfully in 70 msec.
 CREATE VIEW r3 AS (
SELECT DISTINCT p.ID
FROM People p, Relationships r
WHERE (p.ID = r.person2ID AND r.person1ID IN (SELECT * FROM r2))
OR (p.ID = r.person1ID AND r.person2ID IN (SELECT * FROM r2)) );

-- Successfully run. Total query runtime: 22 min 1 secs.
-- 12743 rows affected.
SELECT DISTINCT p.ID
FROM People p, Relationships r
WHERE (p.ID = r.person2ID AND r.person1ID IN (SELECT * FROM r3))
OR (p.ID = r.person1ID AND r.person2ID IN (SELECT * FROM r3));


-- DEGREES OF SEPARATION - all males ----------------------

-- ORIGINAL SET -----------------------

-- Successfully run. Total query runtime: 84 msec.
-- 12706 rows affected.
SELECT ID
FROM People
WHERE gender = 'male';

-- ONE DEGREE -----------------------

-- CREATE VIEW
-- Query returned successfully in 43 msec.
-- Successfully run. Total query runtime: 2 secs 379 msec. 324278 rows affected. 
CREATE VIEW gr1 AS (SELECT p1.ID
FROM People p1, People p2, Relationships r
WHERE (p1.ID = r.person2ID AND r.person1ID = p2.ID AND p2.gender = 'male')
OR (p1.ID = r.person1ID AND r.person2ID = p2.ID AND p2.gender = 'male');

-- Successfully run. Total query runtime: 2 secs 379 msec. 324278 rows affected. 
SELECT * FROM gr1;

-- TWO DEGREES -----------------------

-- CREATE VIEW
-- Query returned successfully in 56 msec.
CREATE VIEW gr2 AS (
SELECT DISTINCT p.ID
FROM People p, Relationships r
WHERE (p.ID = r.person2ID AND r.person1ID IN (SELECT * FROM gr1))
OR (p.ID = r.person1ID AND r.person2ID IN (SELECT * FROM gr1)) );

-- Successfully run. Total query runtime: 38 min 39 secs. 13013 rows affected.
SELECT * FROM gr2;

-- THREE DEGREES -----------------------

-- CREATE VIEW
-- Query returned successfully in 59 msec.
CREATE VIEW gr3 AS (
SELECT DISTINCT p.ID
FROM People p, Relationships r
WHERE (p.ID = r.person2ID AND r.person1ID IN (SELECT * FROM gr2))
OR (p.ID = r.person1ID AND r.person2ID IN (SELECT * FROM gr2)));

Successfully run. Total query runtime: 2 hr 38 min. 13013 rows affected.
SELECT * FROM gr3;


