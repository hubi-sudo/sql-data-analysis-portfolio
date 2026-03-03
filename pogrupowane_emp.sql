SELECT "artist(s)_name", COUNT(*) AS policzone 
FROM utwory 
GROUP BY "artist(s)_name" 
HAVING policzone >= 5 
ORDER BY policzone DESC;