# Insert mealdeals datas
USE mealdeals;

SET @last_id = IF(@last_id IS NULL, 0, (SELECT LAST_INSERT_ID(user_id) FROM users));
INSERT INTO users (firstname, middlename, lastname, username, email, phone, address, pass)
VALUES ((SELECT firstname FROM first ORDER BY RAND() LIMIT 1),
       'NULL',
       (SELECT lastname FROM last ORDER BY RAND() LIMIT 1),
       'NULL',
       'NULL',
       'NULL',
       CONCAT((SELECT cityname FROM city ORDER BY RAND() LIMIT 1), ' , ',
       (SELECT street FROM streets ORDER BY RAND() LIMIT 1), ' ',
       (SELECT st_name FROM st ORDER BY RAND() LIMIT 1), ' ',
       (SELECT SUBSTRING(FLOOR(RAND() * (200 - 1 + 1) + 1), 1, 3)), '.'),
       'NULL');
#Update middlename

UPDATE users SET middlename = IF(firstname IN (SELECT firstname FROM first WHERE first_id < 16), (SELECT middlename FROM middle WHERE middle_id < 16 AND middlename <> firstname ORDER BY RAND() LIMIT 1), (SELECT middlename FROM middle WHERE middle_id > 15 AND middlename <> firstname ORDER BY RAND() LIMIT 1)) WHERE user_id > @last_id;

# Update pass
UPDATE users SET pass = SUBSTRING(MD5(RAND()) FROM 1 FOR 8) WHERE user_id > @last_id;

# Update username
UPDATE users SET username = CONCAT(LEFT(lastname, 1), LEFT(middlename, 1), LEFT(firstname, 1)) WHERE user_id > @last_id;
UPDATE users SET username = CONCAT(LEFT(lastname, 1), LEFT(middlename, 1), LEFT(firstname, 1), SUBSTRING(MD5(RAND()) FROM 1 FOR 3)) WHERE LEFT(firstname, 1) NOT IN ('É', 'Á') AND (user_id > @last_id);
UPDATE users SET username = CONCAT(LEFT(lastname, 1), 'X', SUBSTRING(MD5(RAND()) FROM 1 FOR 3)) WHERE LEFT(firstname, 1) IN ('Á', 'É') AND (user_id > @last_id);


# Update phone
UPDATE users SET phone = REPLACE(SUBSTRING(RAND() FROM 1 FOR 10), '.', '') WHERE user_id > @last_id;
UPDATE users SET phone = CONCAT('+3610', REPLACE(phone, '0', '1')) WHERE user_id > @last_id;

UPDATE users SET email = CONCAT(lastname, firstname, SUBSTRING(ROUND(RAND() * 1000) FROM 1 FOR 10), '@nomail.com') WHERE user_id > @last_id;

