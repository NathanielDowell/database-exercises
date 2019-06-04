USE codeup_test_db;

# SELECT 'The name of all albums by Pink Floyd' as 'QUERY1 ';
# SELECT name FROM albums WHERE artist = 'Pink Floyd';

# ugly, so combined into one:

SELECT name AS 'The name of all albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released'
FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'The genre for Nevermind'
FROM albums WHERE name = 'Nevermind';

SELECT name AS 'Albums released in the 1990s', Artist, release_date
 FROM albums
 WHERE release_date >= 1990
   AND release_date <= 1999;

# WHERE release_date BETWEEN 1990 AND 1999;
# WHERE release_date LIKE '199%';

SELECT name AS 'Which albums had less than 20 million certified sales', Sales
FROM albums
WHERE sales < 20.0;

SELECT name AS 'Rock Albums', genre
 FROM albums
 WHERE genre = 'Rock';
#  WHERE genre LIKE '%Rock%'; lets us catch all genres with rock within genre
