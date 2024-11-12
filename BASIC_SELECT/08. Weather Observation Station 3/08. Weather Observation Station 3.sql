SELECT DISTINCT CITY      -- # DISTINCT keyword is used to exclude duplicate values
FROM STATION
WHERE MOD(ID,2) = 0;      -- # MOD(A,B) is equivalent to A%B
