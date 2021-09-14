/* QUERIES - count()*/

/* Links:
    https://dev.mysql.com/doc/refman/5.6/en/counting-rows.html
    https://dev.mysql.com/doc/refman/5.6/en/group-by-handling.html
    https://dev.mysql.com/doc/refman/5.6/en/aggregate-functions.html#function_count-distinct
*/


-- Welche VERSCHIEDENEN Sektoren gibt es?
/*
SELECT
    DISTINCT sector Industriesektoren
FROM stocks.ccc
ORDER BY sector ASC
;
*/

-- Wieviele VERSCHIEDENE Sektoren ?
/*
SELECT
    COUNT(DISTINCT sector) "Anzahl Sektoren"
FROM stocks.ccc
;
*/

-- Welche VERSCHIEDENEN Branchen ?
/*
SELECT
    DISTINCT industry Branchen
FROM stocks.ccc
ORDER BY Branchen ASC
;
*/

-- Wieviele VERSCHIEDENE Branchen ?
/*
SELECT
    COUNT(DISTINCT industry) "Anzahl Branchen"
FROM stocks.ccc
;
*/

-- Wieviele VERSCHIEDENE Branchen gibt es 
-- in den jeweiligen Industriesektoren?
SELECT
    sector Industriesektoren,  -- nicht aggregiert / organisch
    COUNT(DISTINCT industry) Branchen -- aggregiert / durch eine Fkt. entstanden
FROM stocks.ccc
WHERE sector LIKE "Co%" -- Filter in NICHT aggr. Feldern 
GROUP BY sector -- bei Kombination nicht aggr. /aggr.
HAVING Branchen > 10 -- Filter in aggr. Felder / nach GROUP
ORDER BY Branchen DESC
;













