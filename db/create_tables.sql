#Create ingredients table
CREATE TABLE IF NOT EXISTS ingredients (ingredient_id INT NOT NULL AUTO_INCREMENT, 
				  	ingredient_name VARCHAR(20),
				  	category_id TINYINT,
				  	measure_unit_id TINYINT,
				  	allergie_id TINYINT
				  	PRIMARY KEY (ingredient_id));

#Create category table
CREATE TABLE IF NOT EXISTS categories (category_id INT NOT NULL AUTO_INCREMENT, 
				       category_name VARCHAR(20),
				       PRIMARY KEY (category_id));

#Create measure units table
CREATE TABLE IF NOT EXISTS measure_units (measure_unit_id INT NOT NULL AUTO_INCREMENT, 
					  measure_unit_name VARCHAR(20),
					  PRIMARY KEY (measure_unit_id));

#Create allergies table
CREATE TABLE IF NOT EXISTS allergies (allergie_id INT NOT NULL AUTO_INCREMENT, 
				      allergie_name VARCHAR(20),
				      PRIMARY KEY (allergie_id));

#Create recipies table
CREATE TABLE IF NOT EXISTS recipies (recipe_id INT NOT NULL AUTO_INCREMENT, 
				     recipe_name VARCHAR(20),
				     description TEXT,
				     cooking_time SMALLINT,
				     calorie SMALLINT,
				     difficulty VARCHAR(5),
				     PRIMARY KEY (recipe_id));

#Create rec_ing table
CREATE TABLE IF NOT EXISTS rec_ing (rec_id INT, 
				    ing_id TINYINT);