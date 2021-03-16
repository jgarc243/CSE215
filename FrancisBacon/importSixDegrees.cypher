// Added 15801 labels, created 15801 nodes, set 144689 properties, completed after 1074 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/SDFB_people.csv' AS line
CREATE (:People {ID: toInteger(line.ID),
	displayName: line.displayName, 
	prefix: line.prefix,
	firstName: line.firstName, 
	lastName: line.lastName,
	suffix: line.suffix, 
	title: line.title, 
	gender: line.gender, 
	birthYearType: line.birthYearType,
	birthYear: toInteger(line.birthYear),
	deathYearType: line.deathYearType,
	deathYear: toInteger(line.deathYear)
})


// Set 99955 properties, created 19991 relationships, completed after 245203 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/SDFB_relationships_100000000_100020000.csv' AS row
MATCH (p1: People {ID: toInteger(row.person1ID)})
MATCH (p2: People {ID: toInteger(row.person2ID)})
CREATE (p1)-[:KNOWS {ID: toInteger(row.ID), 
					startYearType: row.startYearType, 
					startYear: toInteger(row.startYear), 
					endYearType: row.endYearType,
					endYear: toInteger(row.endYear)}]->(p2);

// Set 99970 properties, created 19994 relationships, completed after 232202 ms.					
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/SDFB_relationships_100020001_100040000.csv' AS row
MATCH (p1: People {ID: toInteger(row.person1ID)})
MATCH (p2: People {ID: toInteger(row.person2ID)})
CREATE (p1)-[:KNOWS {ID: toInteger(row.ID), 
					startYearType: row.startYearType, 
					startYear: toInteger(row.startYear), 
					endYearType: row.endYearType,
					endYear: toInteger(row.endYear)}]->(p2);
// Set 99985 properties, created 19997 relationships, completed after 224588 ms.					
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/SDFB_relationships_100040001_100060000.csv' AS row
MATCH (p1: People {ID: toInteger(row.person1ID)})
MATCH (p2: People {ID: toInteger(row.person2ID)})
CREATE (p1)-[:KNOWS {ID: toInteger(row.ID), 
					startYearType: row.startYearType, 
					startYear: toInteger(row.startYear), 
					endYearType: row.endYearType,
					endYear: toInteger(row.endYear)}]->(p2);
					
// Set 99985 properties, created 19997 relationships, completed after 270876 ms.					
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/SDFB_relationships_100060001_100080000.csv' AS row
MATCH (p1: People {ID: toInteger(row.person1ID)})
MATCH (p2: People {ID: toInteger(row.person2ID)})
CREATE (p1)-[:KNOWS {ID: toInteger(row.ID), 
					startYearType: row.startYearType, 
					startYear: toInteger(row.startYear), 
					endYearType: row.endYearType,
					endYear: toInteger(row.endYear)}]->(p2);
					
// Set 99960 properties, created 19992 relationships, completed after 271640 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/SDFB_relationships_100080001_100100000.csv' AS row
MATCH (p1: People {ID: toInteger(row.person1ID)})
MATCH (p2: People {ID: toInteger(row.person2ID)})
CREATE (p1)-[:KNOWS {ID: toInteger(row.ID), 
					startYearType: row.startYearType, 
					startYear: toInteger(row.startYear), 
					endYearType: row.endYearType,
					endYear: toInteger(row.endYear)}]->(p2);
					
// Set 99970 properties, created 19994 relationships, completed after 278358 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/SDFB_relationships_100100001_100120000.csv' AS row
MATCH (p1: People {ID: toInteger(row.person1ID)})
MATCH (p2: People {ID: toInteger(row.person2ID)})
CREATE (p1)-[:KNOWS {ID: toInteger(row.ID), 
					startYearType: row.startYearType, 
					startYear: toInteger(row.startYear), 
					endYearType: row.endYearType,
					endYear: toInteger(row.endYear)}]->(p2);
					
// Set 99945 properties, created 19989 relationships, completed after 280092 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/SDFB_relationships_100120001_100140000.csv' AS row
MATCH (p1: People {ID: toInteger(row.person1ID)})
MATCH (p2: People {ID: toInteger(row.person2ID)})
CREATE (p1)-[:KNOWS {ID: toInteger(row.ID), 
					startYearType: row.startYearType, 
					startYear: toInteger(row.startYear), 
					endYearType: row.endYearType,
					endYear: toInteger(row.endYear)}]->(p2);
					
// Set 99975 properties, created 19995 relationships, completed after 278791 ms.		
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/SDFB_relationships_100140001_100160000.csv' AS row
MATCH (p1: People {ID: toInteger(row.person1ID)})
MATCH (p2: People {ID: toInteger(row.person2ID)})
CREATE (p1)-[:KNOWS {ID: toInteger(row.ID), 
					startYearType: row.startYearType, 
					startYear: toInteger(row.startYear), 
					endYearType: row.endYearType,
					endYear: toInteger(row.endYear)}]->(p2);		

// Set 52650 properties, created 10530 relationships, completed after 137742 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/SDFB_relationships_100160001_100180000.csv' AS row
MATCH (p1: People {ID: toInteger(row.person1ID)})
MATCH (p2: People {ID: toInteger(row.person2ID)})
CREATE (p1)-[:KNOWS {ID: toInteger(row.ID), 
					startYearType: row.startYearType, 
					startYear: toInteger(row.startYear), 
					endYearType: row.endYearType,
					endYear: toInteger(row.endYear)}]->(p2);
					
// Set 4645 properties, created 929 relationships, completed after 10778 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/SDFB_relationships_greater_than_100180000.csv' AS row
MATCH (p1: People {ID: toInteger(row.person1ID)})
MATCH (p2: People {ID: toInteger(row.person2ID)})
CREATE (p1)-[:KNOWS {ID: toInteger(row.ID), 
					startYearType: row.startYearType, 
					startYear: toInteger(row.startYear), 
					endYearType: row.endYearType,
					endYear: toInteger(row.endYear)}]->(p2);		
					

// ------------
// Added 15801 labels, created 15801 nodes, set 144689 properties, completed after 1134 ms.
Load People

// Added 1 index, completed after 162 ms.
CREATE INDEX person_id_index FOR (n:People) ON (n.ID)			
			
// Set 99955 properties, created 19991 relationships, completed after 1076 ms.
// Set 99970 properties, created 19994 relationships, completed after 831 ms.
// Set 99985 properties, created 19997 relationships, completed after 746 ms.
// Set 99985 properties, created 19997 relationships, completed after 494 ms.
// Set 99960 properties, created 19992 relationships, completed after 414 ms.
// Set 99970 properties, created 19994 relationships, completed after 353 ms.
// Set 99945 properties, created 19989 relationships, completed after 341 ms.
// Set 99975 properties, created 19995 relationships, completed after 439 ms.
// Set 52650 properties, created 10530 relationships, completed after 224 ms.
// Set 4645 properties, created 929 relationships, completed after 57 ms.