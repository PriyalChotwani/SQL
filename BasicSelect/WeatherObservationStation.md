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
