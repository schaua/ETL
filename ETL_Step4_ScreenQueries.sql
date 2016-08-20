SELECT bank_data.children, count(*)
FROM bank_data
GROUP BY bank_data.children
ORDER BY count(*);

SELECT count(*) <> 0 AS MissingID
FROM bank_data
WHERE bank_data.id	IS NULL;

SELECT id, age AS NegativeAge
FROM bank_data
WHERE age < 0;

SELECT id, age AS OutOfRangeAge
FROM bank_data
WHERE age NOT BETWEEN 0 AND 150;

SELECT id, married AS MaritalStatusInvalid
FROM bank_data
WHERE married NOT IN ('YES', 'NO');

# Convert to a stored procedure