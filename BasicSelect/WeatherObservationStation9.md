#### Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
```Select distinct(CITY) from STATION where left(CITY,1) not in ('a','e','i','o','u')```

#### Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
```Select distinct(CITY) from STATION where right(CITY,1) not in ('a','e','i','o','u')```
