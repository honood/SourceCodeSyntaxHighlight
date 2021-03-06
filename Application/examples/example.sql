-- No duplicate ID fields allowed

CREATE TABLE STATION
(ID INTEGER PRIMARY KEY,
CITY CHAR(20),
STATE CHAR(2),
LAT_N REAL,
LONG_W REAL);


INSERT INTO STATION VALUES (13, 'Phoenix', 'AZ', 33, 112);
INSERT INTO STATION VALUES (44, 'Denver', 'CO', 40, 105);
INSERT INTO STATION VALUES (66, 'Caribou', 'ME', 47, 68);

UPDATE STATS SET RAIN_I = RAIN_I + 0.01;

DELETE FROM STATS
WHERE MONTH = 7
OR ID IN (SELECT ID FROM STATION
WHERE LONG_W < 90);

SELECT LAT_N, CITY, TEMP_F
FROM STATS, STATION
WHERE MONTH = 7
AND STATS.ID = STATION.ID
ORDER BY TEMP_F; 
