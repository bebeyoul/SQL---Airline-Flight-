-- 1. The following relations keeptrack of airline flight information:
-- Flights(flnointeger, frmvarchar2 (30), toovarchar2 (30), distance integer, departsdate,arrives: date, priceinteger)
-- Aircraft(aidinteger, anamevarchar2 (30), cruisingrange: integer)
-- Certified(eidinteger, aid: integer)
-- Employees(eidinteger, enamevarchar2(20), salaryinteger)

drop table certified;
drop table flights;
drop table aircraft;
drop table employees;

create table flights (flno integer, origin varchar(30), destination varchar(30), distance integer, departs date, arrives date, price integer);
create table aircraft (aid integer, aname varchar(30), cruisingrange integer);
create table certified (eid integer, aid integer);
create table employees (eid integer, ename varchar(30), salary decimal);

ALTER TABLE aircraft ADD CONSTRAINT pk_aircraft PRIMARY KEY (aid);
ALTER TABLE flights ADD CONSTRAINT pk_flights PRIMARY KEY (flno);
ALTER TABLE employees ADD CONSTRAINT pk_employees PRIMARY KEY (eid);
ALTER TABLE certified ADD CONSTRAINT pk_certified PRIMARY KEY (eid,aid);
ALTER TABLE certified ADD CONSTRAINT fk_eid FOREIGN KEY (eid) REFERENCES EMPLOYEES(eid);
ALTER TABLE certified ADD CONSTRAINT fk_aid FOREIGN KEY (aid) REFERENCES AIRCRAFT(aid);


INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (1,'Boeing 747-400',8430);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (2,'Boeing 737-800',3383);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (3,'Airbus A340-300',7120);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (4,'British Aerospace Jetstream 41',1502);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (5,'Embraer ERJ-145',1530);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (6,'SAAB 340',2128);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (7,'Piper Archer III',520);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (8,'Tupolev 154',4103);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (16,'Schwitzer 2-33',30);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (9,'Lockheed L1011',6900);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (10,'Boeing 757-300',4010);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (11,'Boeing 777-300',6441);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (12,'Boeing 767-400ER',6475);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (13,'Airbus A320',2605);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (14,'Airbus A319',1805);
INSERT INTO aircraft (aid,aname,cruisingrange) VALUES (15,'Boeing 727',1504);



INSERT INTO employees (eid,ename,salary) VALUES (242518965,'James Smith',120433);
INSERT INTO employees (eid,ename,salary) VALUES (141582651,'Mary Johnson',178345);
INSERT INTO employees (eid,ename,salary) VALUES (011564812,'John Williams',153972);
INSERT INTO employees (eid,ename,salary) VALUES (567354612,'Lisa Walker',256481);
INSERT INTO employees (eid,ename,salary) VALUES (552455318,'Larry West',101745);
INSERT INTO employees (eid,ename,salary) VALUES (550156548,'Karen Scott',205187);
INSERT INTO employees (eid,ename,salary) VALUES (390487451,'Lawrence Sperry',212156);
INSERT INTO employees (eid,ename,salary) VALUES (274878974,'Michael Miller',99890);
INSERT INTO employees (eid,ename,salary) VALUES (254099823,'Patricia Jones',24450);
INSERT INTO employees (eid,ename,salary) VALUES (356187925,'Robert Brown',44740);
INSERT INTO employees (eid,ename,salary) VALUES (355548984,'Angela Martinez',212156); 
INSERT INTO employees (eid,ename,salary) VALUES (310454876,'Joseph Thompson',212156);
INSERT INTO employees (eid,ename,salary) VALUES (489456522,'Linda Davis',127984);
INSERT INTO employees (eid,ename,salary) VALUES (489221823,'Richard Jackson',23980);
INSERT INTO employees (eid,ename,salary) VALUES (548977562,'William Ward',84476);
INSERT INTO employees (eid,ename,salary) VALUES (310454877,'Chad Stewart',33546);
INSERT INTO employees (eid,ename,salary) VALUES (142519864,'Betty Adams',227489);
INSERT INTO employees (eid,ename,salary) VALUES (269734834,'George Wright',289950);
INSERT INTO employees (eid,ename,salary) VALUES (287321212,'Michael Miller',48090);
INSERT INTO employees (eid,ename,salary) VALUES (552455348,'Dorthy Lewis',92013);
INSERT INTO employees (eid,ename,salary) VALUES (248965255,'Barbara Wilson',43723);
INSERT INTO employees (eid,ename,salary) VALUES (159542516,'William Moore',48250);
INSERT INTO employees (eid,ename,salary) VALUES (348121549,'Haywood Kelly',32899);
INSERT INTO employees (eid,ename,salary) VALUES (090873519,'Elizabeth Taylor',32021);
INSERT INTO employees (eid,ename,salary) VALUES (486512566,'David Anderson',743001);
INSERT INTO employees (eid,ename,salary) VALUES (619023588,'Jennifer Thomas',54921);
INSERT INTO employees (eid,ename,salary) VALUES (015645489,'Donald King',18050);
INSERT INTO employees (eid,ename,salary) VALUES (556784565,'Mark Young',205187);
INSERT INTO employees (eid,ename,salary) VALUES (573284895,'Eric Cooper',114323);
INSERT INTO employees (eid,ename,salary) VALUES (574489456,'William Jones',105743);
INSERT INTO employees (eid,ename,salary) VALUES (574489457,'Milo Brooks',20);

INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (99,'Los Angeles','Washington D.C.',2308,to_date('2005/04/12 09:30','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 21:40','YYYY/MM/DD HH24:MI'),235.98);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (13,'Los Angeles','Chicago',1749,to_date('2005/04/12 08:45','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 20:45','YYYY/MM/DD HH24:MI'),220.98);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (346,'Los Angeles','Dallas',1251,to_date('2005/04/12 11:50','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 19:05','YYYY/MM/DD HH24:MI'),225.43);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (387,'Los Angeles','Boston',2606,to_date('2005/04/12 07:03','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 17:03','YYYY/MM/DD HH24:MI'),261.56);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (7,'Los Angeles','Sydney',7487,to_date('2005/04/12 22:30','YYYY/MM/DD HH24:MI'),to_date('2005/04/14 6:10','YYYY/MM/DD HH24:MI'),1278.56);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (2,'Los Angeles','Tokyo',5478,to_date('2005/04/12 12:30','YYYY/MM/DD HH24:MI'),to_date('2005/04/13 15:55','YYYY/MM/DD HH24:MI'),780.99);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (33,'Los Angeles','Honolulu',2551,to_date('2005/04/12 09:15','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 11:15','YYYY/MM/DD HH24:MI'),375.23);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (34,'Los Angeles','Honolulu',2551,to_date('2005/04/12 12:45','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 15:18','YYYY/MM/DD HH24:MI'),425.98);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (76,'Chicago','Los Angeles',1749,to_date('2005/04/12 08:32','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 10:03','YYYY/MM/DD HH24:MI'),220.98);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (68,'Chicago','New York',802,to_date('2005/04/12 09:00','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 12:02','YYYY/MM/DD HH24:MI'),202.45);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (7789,'Madison','Detroit',319,to_date('2005/04/12 06:15','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 08:19','YYYY/MM/DD HH24:MI'),120.33);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (701,'Detroit','New York',470,to_date('2005/04/12 08:55','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 10:26','YYYY/MM/DD HH24:MI'),180.56);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (702,'Madison','New York',789,to_date('2005/04/12 07:05','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 10:12','YYYY/MM/DD HH24:MI'),202.34);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (4884,'Madison','Chicago',84,to_date('2005/04/12 22:12','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 23:02','YYYY/MM/DD HH24:MI'),112.45);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (2223,'Madison','Pittsburgh',517,to_date('2005/04/12 08:02','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 10:01','YYYY/MM/DD HH24:MI'),189.98);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (5694,'Madison','Minneapolis',247,to_date('2005/04/12 08:32','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 09:33','YYYY/MM/DD HH24:MI'),120.11);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (304,'Minneapolis','New York',991,to_date('2005/04/12 10:00','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 1:39','YYYY/MM/DD HH24:MI'),101.56);
INSERT INTO flights (flno,origin,destination,distance,departs,arrives,price) VALUES (149,'Pittsburgh','New York',303,to_date('2005/04/12 09:42','YYYY/MM/DD HH24:MI'),to_date('2005/04/12 12:09','YYYY/MM/DD HH24:MI'),116.50);

INSERT INTO certified (eid,aid) VALUES (567354612,1);
INSERT INTO certified (eid,aid) VALUES (567354612,2);
INSERT INTO certified (eid,aid) VALUES (567354612,10);
INSERT INTO certified (eid,aid) VALUES (567354612,11);
INSERT INTO certified (eid,aid) VALUES (567354612,12);
INSERT INTO certified (eid,aid) VALUES (567354612,15);
INSERT INTO certified (eid,aid) VALUES (567354612,7);
INSERT INTO certified (eid,aid) VALUES (567354612,9);
INSERT INTO certified (eid,aid) VALUES (567354612,3);
INSERT INTO certified (eid,aid) VALUES (567354612,4);
INSERT INTO certified (eid,aid) VALUES (567354612,5);
INSERT INTO certified (eid,aid) VALUES (552455318,2);
INSERT INTO certified (eid,aid) VALUES (552455318,14);
INSERT INTO certified (eid,aid) VALUES (550156548,1);
INSERT INTO certified (eid,aid) VALUES (550156548,12);
INSERT INTO certified (eid,aid) VALUES (390487451,3);
INSERT INTO certified (eid,aid) VALUES (390487451,13);
INSERT INTO certified (eid,aid) VALUES (390487451,14);
INSERT INTO certified (eid,aid) VALUES (274878974,10);
INSERT INTO certified (eid,aid) VALUES (274878974,12);
INSERT INTO certified (eid,aid) VALUES (355548984,8);
INSERT INTO certified (eid,aid) VALUES (355548984,9);
INSERT INTO certified (eid,aid) VALUES (310454876,8);
INSERT INTO certified (eid,aid) VALUES (310454876,9);
INSERT INTO certified (eid,aid) VALUES (548977562,7);
INSERT INTO certified (eid,aid) VALUES (142519864,1);
INSERT INTO certified (eid,aid) VALUES (142519864,11);
INSERT INTO certified (eid,aid) VALUES (142519864,12);
INSERT INTO certified (eid,aid) VALUES (142519864,10);
INSERT INTO certified (eid,aid) VALUES (142519864,3);
INSERT INTO certified (eid,aid) VALUES (142519864,2);
INSERT INTO certified (eid,aid) VALUES (142519864,13);
INSERT INTO certified (eid,aid) VALUES (142519864,7);
INSERT INTO certified (eid,aid) VALUES (269734834,1);
INSERT INTO certified (eid,aid) VALUES (269734834,2);
INSERT INTO certified (eid,aid) VALUES (269734834,3);
INSERT INTO certified (eid,aid) VALUES (269734834,4);
INSERT INTO certified (eid,aid) VALUES (269734834,5);
INSERT INTO certified (eid,aid) VALUES (269734834,6);
INSERT INTO certified (eid,aid) VALUES (269734834,7);
INSERT INTO certified (eid,aid) VALUES (269734834,8);
INSERT INTO certified (eid,aid) VALUES (269734834,9);
INSERT INTO certified (eid,aid) VALUES (269734834,10);
INSERT INTO certified (eid,aid) VALUES (269734834,11);
INSERT INTO certified (eid,aid) VALUES (269734834,12);
INSERT INTO certified (eid,aid) VALUES (269734834,13);
INSERT INTO certified (eid,aid) VALUES (269734834,14);
INSERT INTO certified (eid,aid) VALUES (269734834,15);
INSERT INTO certified (eid,aid) VALUES (552455318,7);
INSERT INTO certified (eid,aid) VALUES (556784565,5);
INSERT INTO certified (eid,aid) VALUES (556784565,2);
INSERT INTO certified (eid,aid) VALUES (556784565,3);
INSERT INTO certified (eid,aid) VALUES (573284895,3);
INSERT INTO certified (eid,aid) VALUES (573284895,4);
INSERT INTO certified (eid,aid) VALUES (573284895,5);
INSERT INTO certified (eid,aid) VALUES (574489456,8);
INSERT INTO certified (eid,aid) VALUES (574489456,6);
INSERT INTO certified (eid,aid) VALUES (574489457,7);
INSERT INTO certified (eid,aid) VALUES (242518965,2);
INSERT INTO certified (eid,aid) VALUES (242518965,10);
INSERT INTO certified (eid,aid) VALUES (141582651,2);
INSERT INTO certified (eid,aid) VALUES (141582651,10);
INSERT INTO certified (eid,aid) VALUES (141582651,12);
INSERT INTO certified (eid,aid) VALUES (011564812,2);
INSERT INTO certified (eid,aid) VALUES (011564812,10);
INSERT INTO certified (eid,aid) VALUES (356187925,6);
INSERT INTO certified (eid,aid) VALUES (159542516,5);
INSERT INTO certified (eid,aid) VALUES (159542516,7);
INSERT INTO certified (eid,aid) VALUES (090873519,6);

commit;

-- a. Find the names of aircraft such that all pilots certified to operatethemearn morethan $80,000.
SELECT aname as Aircraft_Name FROM aircraft WHERE aid IN (SELECT aid FROM certified JOIN employees USING (eid)
                                                    GROUP BY aid
                                                    HAVING MIN(salary) > 80000);
 
-- b. For each pilot who is certified for more than three aircraft, find the eid and the maximum cruising range of the aircraft for which she or he is certified.
SELECT eid as Pilot_Id, MAX(cruisingrange) as Cruising_range FROM employees JOIN certified USING (eid)
                                              JOIN aircraft USING (aid)
                                              GROUP BY eid
                                              HAVING COUNT(*) > 3;

SELECT eid as Pilot_Id, max_crg  as Cruising_range FROM (SELECT DISTINCT eid,
                          COUNT(*) OVER (PARTITION BY eid) AS cnt_ctf,
                          MAX(cruisingrange) OVER (PARTITION BY eid) AS max_crg
                          FROM employees JOIN certified USING (eid)
                                         JOIN aircraft USING (aid))
                                         WHERE cnt_ctf > 3;

-- c. Find the names of pilots whose salary is less than the price of the cheapest route from Los Angeles to Honolulu.
SELECT ename as Polite_Names FROM employees
                            WHERE salary < ALL (SELECT price FROM flights
                                                             WHERE origin = 'Los Angeles'
                                                             AND destination = 'Honolulu');
                        
SELECT ename as Polite_Names FROM employees WHERE salary < (SELECT MIN(price) FROM flights
                                                              WHERE origin = 'Los Angeles'
                                                              AND destination = 'Honolulu');

-- d. For all aircraft with cruising range over 1000 miles, find the name of the aircraft and the average salary of all pilots certified for this aircraft.
SELECT DISTINCT aname as Aircraft_Names,ROUND(AVG(salary) OVER (PARTITION BY aid)) AS avg_sal_by_Aircraft_Id
FROM employees JOIN certified USING (eid)
               JOIN aircraft  USING (aid)
               WHERE cruisingrange > 1000;

-- e. Find the names of pilots certified for some Boeing aircraft.
SELECT DISTINCT ename as Pilots_Names FROM employees JOIN certified USING (eid)
                                                     JOIN aircraft  USING (aid)
                                                     WHERE aname LIKE 'Boeing%';
 
SELECT ename FROM employees WHERE eid IN (SELECT eid FROM certified JOIN aircraft USING (aid)
                                                                    WHERE aname LIKE 'Boeing%');

-- f. Find the aids of all aircraft that can be used on routes from Los Angeles to Chicago.
SELECT aid as Aircraft_Id FROM aircraft WHERE cruisingrange >= (SELECT MIN(distance)FROM flights 
                                                                WHERE origin = 'Los Angeles' 
                                                                AND destination = 'Chicago');

-- g. Identify the routes that can be piloted by every pilot who makes more than $100,000.
SELECT origin as Departure, destination as Arrival FROM flights
 WHERE distance <= (SELECT MIN(max_cr)
                      FROM (SELECT eid, MAX(cruisingrange) AS max_cr
                              FROM aircraft JOIN certified USING (aid)
                                            JOIN employees USING (eid)
                                            WHERE salary > 100000
                                            GROUP BY eid));

-- h. Print the enames of pilots who can operate planes with cruising range greater than 3000 miles but are not certified on any Boeing aircraft.
SELECT ename FROM employees WHERE EXISTS(SELECT 1 FROM certified JOIN aircraft USING(aid)
                                                                WHERE eid = employees.eid
                                                                AND cruisingrange > 3000)
                                                                AND NOT EXISTS (SELECT 1
                                                                                FROM certified JOIN aircraft USING(aid)
                                                                                WHERE eid = employees.eid
                                                                                AND aname LIKE 'Boeing%');

-- i. A customer wants to travel from Madison to New York with no more than two changes of flight. List the choice of departure times from Madison if the customer wants to arrive in New York by 6 p.m.

SELECT f1.origin || '/' || f1.destination || '/' || f2.destination || '/' || f3.destination, f1.departs, coalesce(f3.arrives, f2.arrives, f1.arrives) as arrives -- Cela signifie que les valeurs d'entrée sont évaluées plusieurs fois
  FROM flights f1 LEFT OUTER JOIN flights f2 ON (f1.destination = f2.origin)
                  LEFT OUTER JOIN flights f3 ON (f2.destination = f3.origin)
                  WHERE f1.origin = 'Madison'
                  AND (f1.destination = 'New York' or f2.destination = 'New York' or f3.destination = 'New York')
                  AND CASE 
                    WHEN f2.origin IS NULL THEN TO_NUMBER(TO_CHAR(f1.arrives,'HH24MI'))
                    WHEN f3.origin IS NULL THEN TO_NUMBER(TO_CHAR(f2.arrives,'HH24MI'))
                  ELSE TO_NUMBER(TO_CHAR(f1.arrives,'HH24MI'))
                  END < 1030;

select * from flights f1 
        left outer join flights f2 on f2.origin=f1.destination 
        left outer join flights f3 on f3.origin=f2.destination 
        where f1.ORIGIN='Madison' 
        and ((f1.destination='New York' and f1.arrives<to_date('2005/04/12 18:00','YYYY/MM/DD HH24:MI')) 
        or (f2.destination='New York' and f1.arrives<to_date('2005/04/12 18:00','YYYY/MM/DD HH24:MI') and f1.arrives < f2.departs) 
        or (f3.destination='New York' and f1.arrives<to_date('2005/04/12 18:00','YYYY/MM/DD HH24:MI') and f1.arrives < f2.departs and f2.arrives < f3.departs));


-- j. Compute the difference between the average salary of a pilot and the average salary of all employees (including pilots).
SELECT (SELECT AVG(salary) FROM employees INNER JOIN certified USING (eid)) - (SELECT AVG(salary) FROM employees) as avg_sal_pilot_Minus_avg_sal_all_employees
  FROM dual;

-- k. Print the name and salary of every non pilot whose salary is more than the average salary for pilots.
SELECT ename, salary
  FROM employees
 WHERE salary > (SELECT AVG(salary) 
                   FROM employees 
                  WHERE eid IN (SELECT eid 
                                  FROM certified))
   AND eid NOT IN (SELECT eid 
                     FROM certified);

-- l. Print the names of employees who are certified only on aircrafts with cruising range longer than 1000 miles.
SELECT ename
  FROM employees INNER JOIN certified USING (eid)
                 INNER JOIN aircraft  USING (aid)
 WHERE cruisingrange > 1000
MINUS
SELECT ename
  FROM employees INNER JOIN certified USING (eid)
                 INNER JOIN aircraft  USING (aid)
 WHERE cruisingrange <= 1000;

-- m. Print the names of employees who are certified only on aircrafts with cruising range longer than 1000 miles, but on at least two such aircrafts.
SELECT ename, COUNT(*)
  FROM employees INNER JOIN certified USING (eid)
                 INNER JOIN aircraft  USING (aid)
 WHERE cruisingrange > 1000
GROUP BY ename
HAVING COUNT(*) >= 2;

-- n. Print the names of employees who are certified only on aircrafts with cruising range longer than 1000 miles and who are certified on some Boeing aircraft.
SELECT ename as Employees_Names FROM (SELECT ename, MIN(cruisingrange) OVER (PARTITION BY eid) min_cr_by_eid
                                        FROM employees INNER JOIN certified USING (eid)
                                                       INNER JOIN aircraft  USING (aid))
                                        WHERE min_cr_by_eid > 1000
                                        INTERSECT
                                        SELECT ename FROM employees INNER JOIN certified USING (eid)
                                                                    INNER JOIN aircraft  USING (aid)
                                                                    WHERE aname LIKE 'Boeing%';

-- ===================================================================================================================================================================
-- following relational schema. An employee can work in more than one department; 
-- the pct_timefiled of the Works relation shows the percentage of
-- time that a given employeeworks in a given department.

-- Emp(eidinteger, namevarchar2(30), lastnamevarchar2(30), ageinteger, salaryreal)
-- Works(eidinteger, did: integer, pct_time: integer)
-- Dept(didinteger, dnamevarchar2(30), budgetreal, manageridinteger) 
drop table Emp;
drop table Works;
drop table Dept; 

create table Emp(eid integer, name varchar2(30), lastname varchar2(30), age integer, salary real)
create table Works(eid integer, did integer, pct_time integer)
create table Dept(did integer, dname varchar2(30), budget real, managerid integer) 

alter table Emp ADD CONSTRAINT pk_emp PRIMARY KEY (eid);
alter table Dept ADD CONSTRAINT pk_dept PRIMARY KEY (did);
alter table Works ADD CONSTRAINT pk_work PRIMARY KEY(eid, did);

alter table Works ADD CONSTRAINT fk_eid2 FOREIGN KEY (eid) REFERENCES Emp(eid);
alter table Works ADD CONSTRAINT fk_did FOREIGN KEY (did) REFERENCES Dept(did);

INSERT INTO Dept(did,Dname,Budget,Managerid) VALUES(14,'IT',65000,'123234877');
INSERT INTO Dept(did,Dname,Budget,Managerid) VALUES(37,'Accounting',15000,'222364883');
INSERT INTO Dept(did,Dname,Budget,Managerid) VALUES(59,'Human Resources',240000,'745685214');
INSERT INTO Dept(did,Dname,Budget,Managerid) VALUES(77,'Research',55000,'546523478');
INSERT INTO Dept(did, Dname,Budget,Managerid) VALUES(15,'Research',65000,'123234877');

INSERT INTO Emp(eid,Name,Lastname, age,salary) VALUES('123234877','Michael','Rogers',45, 4000);
INSERT INTO Emp(eid,Name,Lastname,age,salary) VALUES('152934485','Anand','Manikutty',36,5000);
INSERT INTO Emp(eid,Name,Lastname,age,salary) VALUES('222364883','Carol','Smith',25, 55000);
INSERT INTO Emp(eid,Name,Lastname,age,salary) VALUES('326587417','Joe','Stevens',74, 6500);
INSERT INTO Emp(eid,Name,Lastname,age,salary) VALUES('332154719','Mary-Anne','Foster',53, 4600);
INSERT INTO Emp(eid,Name,Lastname,age,salary) VALUES('332569843','George','ODonnell',24, 8000);
INSERT INTO Emp(eid,Name,Lastname,age,salary) VALUES('546523478','John','Doe',46, 7000);
INSERT INTO Emp(eid,Name,Lastname,age,salary) VALUES('631231482','David','Smith',23, 5050);
INSERT INTO Emp(eid,Name,Lastname,age,salary) VALUES('654873219','Zacary','Efron',73, 6400);
INSERT INTO Emp(eid,Name,Lastname,age,salary) VALUES('745685214','Eric','Goldsmith',53, 5080);
INSERT INTO Emp(eid,Name,Lastname,age,salary) VALUES('845657245','Elizabeth','Doe',42, 6400);
INSERT INTO Emp(eid,Name,Lastname,age,salary) VALUES('845657246','Kumar','Swamy',31,5800);

INSERT INTO Works (eid, did, pct_time) VALUES ('123234877', 37, 0.20); 
INSERT INTO Works (eid, did, pct_time) VALUES ('123234877', 14, 0.20); 
INSERT INTO Works (eid, did, pct_time) VALUES ('123234877', 59, 0.20); 
INSERT INTO Works (eid, did, pct_time) VALUES ('123234877', 77, 0.90); 
INSERT INTO Works (eid, did, pct_time) VALUES ('152934485', 14, 0.10); 
INSERT INTO Works (eid, did, pct_time) VALUES ('152934485', 37, 1.00); 
INSERT INTO Works (eid, did, pct_time) VALUES ('222364883', 37, 1.00); 
INSERT INTO Works (eid, did, pct_time) VALUES ('326587417', 59, 1.00); 
INSERT INTO Works (eid, did, pct_time) VALUES ('332154719', 59, 1.00); 
INSERT INTO Works (eid, did, pct_time) VALUES ('332569843', 59, 0.60); 
INSERT INTO Works (eid, did, pct_time) VALUES ('546523478', 37, 0.40); 
INSERT INTO Works (eid, did, pct_time) VALUES ('631231482', 59, 0.60); 
INSERT INTO Works (eid, did, pct_time) VALUES ('654873219', 14, 0.40); 
INSERT INTO Works (eid, did, pct_time) VALUES ('745685214', 77, 0.70); 
INSERT INTO Works (eid, did, pct_time) VALUES ('845657245', 14, 0.30); 
INSERT INTO Works (eid, did, pct_time) VALUES ('845657246', 59, 0.50);

commit;

-- a) Print the names and ages of each employee who works in both the IT department and the Research department.
SELECT name, age FROM emp INNER JOIN works using (eid)
                          INNER JOIN dept  using (did)
                          WHERE dname = 'IT'
                          INTERSECT
                          SELECT name, age FROM emp INNER JOIN works using (eid)
                                                    INNER JOIN dept  using (did)
                                                    WHERE dname = 'Research';
 
-- b) For each department with more than 3 full-time-equivalent employees 
-- (i.e., where the part-time and full-time employees add up to at least that many full-time employees), 
-- print the dId together with the number of employees that work in that department.
SELECT dname as Depatment_Name, sum(pct_time)as Sum_pourcentage_time, count(*) as Number_Emp_Work_in_this_Department 
        FROM dept INNER JOIN works using (did)
        GROUP BY dname
        HAVING sum(pct_time) > 3;

SELECT did as Department_Id, sum(pct_time) as Sum_pourcentage_time,count(*) as Number_Emp_Work_in_this_Department 
        FROM dept INNER JOIN works using (did)
        GROUP BY did
        HAVING sum(pct_time) > 3;
        
-- c) Print the name of each employee whose salary exceeds the budget of all of the departments that he or she works in.
SELECT name FROM emp
            WHERE salary > ALL (SELECT budget FROM dept INNER JOIN works USING (did) 
                                                        WHERE eid = emp.eid);
 
-- d) Find the manager ids of managers who manage only departments with budgets greater than 100000.
SELECT managerid, min(budget)FROM dept
                             GROUP BY managerid
                             HAVING min(budget) > 100000;
 
-- e) Find the enames of managers who manage the departments with the largest budgets.
SELECT name, lastname FROM (SELECT name, lastname, RANK() OVER (ORDER BY budget DESC) AS rank_budget
                            FROM dept INNER JOIN emp ON (managerid = eid))
                            WHERE rank_budget = 1;

-- f) If a manager manages more than one department, he or she controls the sum of all the budgets for those departments. Find the manager ids of managers who control more than 200 000.
SELECT * FROM (SELECT managerid, COUNT(*) OVER (PARTITION BY managerid) AS count_dept, SUM(budget) OVER (PARTITION BY managerid) AS sum_budget
                FROM dept)
        WHERE count_dept > 1
        AND sum_budget > 200000;
  
-- g) Find the manager ids of managers who control the largest amounts.


-- h) Find the enames of managers who manage only departments with budgets larger than 100000, but at least one department with budget less than 200000.
SELECT name, lastname FROM emp
                    WHERE eid IN (SELECT managerid
                                FROM dept
                                GROUP BY managerid
                                HAVING MIN(budget) > 100000)
                    AND eid IN (SELECT managerid
                                FROM dept
                                WHERE budget < 200000);