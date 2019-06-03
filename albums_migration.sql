USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO-INCREMENT,
    artist VARCHAR(100),
    name VARCHAR(255),
    release_date DATE ,
    sales DECIMAL(11,2),
    genre VARCHAR(50),
    PRIMARY KEY (id);
)