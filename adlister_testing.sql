USE adlister_test_db;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    USER VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    PASSWORD VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO users (USER, email, PASSWORD)
VALUES ('SumBunny', 'easterapproaches@netscape.com', 'BunnizBeetzBSG29#'),
       ('BogusMark', 'markymark@yahoo.com', '1234'),
       ('Creepy_Banana', 'chiquita17@gmail.com', 'Ahpeeling_Pass40rd'),
       ('Sterff_Derffler7', 'xena_warrior@yahoo.com', 'sLeemOY!#TROUT');

SELECT *
 FROM users;


CREATE TABLE IF NOT EXISTS ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(255),
    description TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ad_category ( -- This is our PIVOT TABLE
  ad_id INTEGER UNSIGNED NOT NULL,
  category_id INTEGER UNSIGNED NOT NULL,
  FOREIGN KEY (ad_id) REFERENCES ads(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);