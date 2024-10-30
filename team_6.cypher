//Assignment 2
//Team 6
//Vito Valenzano, Sean Lacson Lee, Alex Sterling
//10/29/2024


//1.[Alex] Show the name of each tournament included in the database.
MATCH (t:Tournament)
RETURN t.name

//2.[Vito] Show the name of each player (Person) who has ever represented the USA.
MATCH (p:Person)-[REPRESENTS]->(:Team {name:"USA"} ) 
RETURN p.name
//3.[Sean] Show the date of birth (dob) of Lauren Holiday.

//4.[Alex] Show the data of each person whose name contains the substring 'Hara'
MATCH (p:Person)
WHERE p.name CONTAINS 'Hara'
RETURN p

//5.[Vito] Show the number of squads that 'Kelley O Hara' was in.
MATCH (:Person {name:"Kelley O Hara"} )-[IN_SQUAD]->(s:Squad)
RETURN count(s) as num_squads

//6.[Sean] Show the name of each player (Person) for team 'USA' who has scored a goal in the tournaments.

//7.[Alex] Who was the coach of the USA squad in 2019 (that is, the squad whose id is "USA in 2019")?
MATCH (s:Squad {id: "USA in 2019"})-[:COACHED_BY]->(c:Coach)
RETURN c.name AS coachName

//8.[Vito] Show all the matches in which "Rose Lavelle" scored a goal
MATCH (p:Person {name:"Rose Lavelle"})-[SCORED_GOAL]->(m:Match)
RETURN m.id as match_id, m.date as match_date //This info should allow for someone to identify a given match

//9.[Sean] Show the name of each person who represented team "USA" (as player) and also coached for some squad in the tournaments (not at the same time, of course).
