
-- PROGRESSION 1:

--1. Insert into city
INSERT INTO CITY(ID, NAME)
VALUES(1,'Chennai');


--2. Insert into referee
INSERT INTO REFEREE(ID, NAME)
VALUES(1,'Billy Bowden');

INSERT INTO REFEREE(ID, NAME)
VALUES(2,'Shaun Thompson');

INSERT INTO REFEREE(ID, NAME)
VALUES(3,'Shane Lee');

--3. Insert into innings
INSERT INTO INNINGS(ID, INNINGS_NUMBER)
VALUES(1,1);


--4. Insert into extra_type
INSERT INTO EXTRA_TYPE(ID, NAME)
VALUES(1,'Bonus point');

SELECT * FROM EXTRA_TYPE;

--5. Insert into skill
INSERT INTO SKILL(ID, NAME)
VALUES(1,'Raiding');

--6. Insert into team
INSERT INTO TEAM(ID, NAME, COACH, home_city, captain)
VALUES(1,'Chennai Raiders', 'Stephen Flemming', 1, 1);

INSERT INTO TEAM(ID, NAME, COACH, home_city, captain)
VALUES(2,'Mumbai Raiders', 'Sachin Tendulkar', 2, 2);

--7. Insert into player
INSERT INTO PLAYER(ID, NAME, COUNTRY, SKILL_ID)
VALUES(1,'MS Dhoni', 'India', 1);

INSERT INTO PLAYER(ID, NAME, COUNTRY, SKILL_ID)
VALUES(2,'V Kohli', 'India', 2);
INSERT INTO PLAYER(ID, NAME, COUNTRY, SKILL_ID)
VALUES(3,'R Sharma', 'India', 2);
INSERT INTO PLAYER(ID, NAME, COUNTRY, SKILL_ID)
VALUES(4,'J Bumrah', 'India', 2);

SELECT * FROM PLAYER;

--8. Insert into venue
INSERT INTO VENUE(ID, STADIUM_NAME,CITY_ID)
VALUES(1,'JawaharLal Nehru Indoor Stadium', 1);

--9. Insert into event
INSERT INTO EVENT(ID, STADIUM_NAME, INNINGS_ID, EVENT_NO, RAIDER_ID, RAID_POINTS, DEFENDING_POINTS, CLOCK_IN_SECONDS, TEAM_ONE_SCORE, TEAM_TWO_SCORE)
VALUES(1,'JawaharLal Nehru Indoor Stadium', 1, 1, 1, 3, 0, 5, 32, 34);



--10. Insert into extra_event
INSERT INTO EXTRA_EVENT(ID, EVENT_ID, EXTRA_TYPE_ID, POINTS, SCORING_TEAM_ID)
VALUES(1, 1, 1, 5, 1);


--11. Insert into outcome
INSERT INTO OUTCOME(ID, STATUS, WINNER_TEAM_ID, SCORE, PLAYER_OF_MATCH)
VALUES(1, 'Win', 1, 32, 1);

--12. Insert into game
INSERT INTO GAME(ID, GAME_DATE, TEAM_ID_1, TEAM_ID_2, VENUE_ID, OUTCOME_ID, REFEREE_ID_1, REFEREE_ID_2, FIRST_INNINGS_ID, SECOND_INNINGS_ID)
VALUES(1, '22-MAY-2020', 1, 2, 1, 1, 1, 2, 1, 2);

--13. Update player table
UPDATE PLAYER
SET NAME = 'Virat Kohli', SKILL_ID = 1
WHERE ID = 2;

--14. Update player table
UPDATE PLAYER
SET NAME = 'Rohit Sharma', SKILL_ID = 1
WHERE ID = 3;


--15. Update player table
UPDATE PLAYER
SET NAME = 'Jasprit Bumrah', SKILL_ID = 1
WHERE ID = 4;

--16. Update player table
UPDATE PLAYER
SET NAME = 'Mahendra Singh Dhoni'
WHERE ID = 1;

--17. Delete from extra_type
DELETE FROM EXTRA_TYPE;

--18. Delete from referee
DELETE FROM REFEREE
WHERE ID = 3;

--19. Delete from player
DELETE FROM PLAYER
WHERE NAME = 'Jasprit Bumrah';

--20. Delete from outcome
DELETE FROM OUTCOME
WHERE ID = 1;