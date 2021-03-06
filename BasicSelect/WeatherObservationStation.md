#### Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
```Select distinct(CITY) from STATION where left(CITY,1) not in ('a','e','i','o','u')```

#### Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
```Select distinct(CITY) from STATION where right(CITY,1) not in ('a','e','i','o','u')```

#### Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
```Select distinct(CITY) from STATION where left(CITY,1) not in ('a','e','i','o','u') and right(CITY,1) not in ('a','e','i','o','u')```

#### Query the following two values from the STATION table:
1. The sum of all values in LAT_N rounded to a scale of 2 decimal places.
2. The sum of all values in LONG_W rounded to a scale of 2 decimal places.
```
Select round(sum(LAT_N),2) as lat, round(sum(LONG_W),2) as lon from STATION 
```
#### Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.
```Select TRUNCATE(SUM(LAT_N),4) FROM STATION WHERE 38.7880<LAT_N AND LAT_N<137.2345```

#### Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
```SELECT TRUNCATE(MAX(LAT_N),4) FROM STATION WHERE LAT_N<137.2345```

#### Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.
```SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N< 137.2345 ORDER BY LAT_N DESC LIMIT 1```

#### Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.
```SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N>38.7780 ORDER BY LAT_N LIMIT 1```

#### Consider P1(A,B) and P2(C,D) to be two points on a 2D plane.
A happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
B happens to equal the minimum value in Western Longitude (LONG_W in STATION).
C happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
D happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

```SELECT ROUND(ABS(A-C)+ABS(B-D),4) FROM (SELECT MIN(LAT_N) AS A, MIN(LONG_W) AS B, MAX(LAT_N) AS C, MAX(LONG_W) AS D FROM STATION) AS S```

Consider P1(A,C) and P2(B,D) to be two points on a 2D plane where (A,B) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (C,D) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

```SELECT FORMAT(SQRT(POWER(B-A, 2)+POWER(D-C,2)),4) FROM (SELECT MIN(LAT_N) AS A, MAX(LAT_N) AS B, MIN(LONG_W) AS C, MAX(LONG_W) AS D FROM STATION) AS S```
