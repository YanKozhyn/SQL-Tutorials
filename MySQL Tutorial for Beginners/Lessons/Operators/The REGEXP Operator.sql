-- SELECT * 
-- FROM customers
-- WHERE last_name LIKE '%field%'
-- WHERE last_name REGEXP '^field' start with field
-- WHERE last_name REGEXP 'field|mac|rose' word contain field or mac or rose
-- WHERE last_name REGEXP 'field$|mac|rose' word end with field or contain mac or rose
-- WHERE last_name REGEXP '[gim]e' any customer who contain ge or ie or me
-- WHERE last_name REGEXP 'e[fmq]' any customer who contain ef or em or eq
-- WHERE last_name REGEXP '[a-h]e' any customer who contain from ae to he


-- GET the customers whose
-- 		first names are ELKA or AMBUR		
-- 		last names end with EY or ON
-- 		last names start with MY or contains SE
-- 		last names contain B followed by R or U

SELECT *
FROM customers
-- 1 WHERE  first_name REGEXP 'ELKA|AMBUR'
-- 2 WHERE last_name REGEXP 'EY$|ON$'
-- 3 WHERE last_name REGEXP '^MY|SE'
-- 4 WHERE last_name REGEXP 'BR|BU'