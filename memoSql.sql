-- SQLite

-- CREATION DE TABLE

-- CREATE TABLE posts (
--     title VARCHAR(150), 
--     content TEXT,
--     category VARCHAR(50),
--     created_at DATETIME
-- );

-- ALTER TABLE posts ADD category VARCHAR(50);
-- ALTER TABLE posts RENAME category TO tag;
-- DROP TABLE posts;
/*
CREATE TABLE recipes(
    title VARCHAR(150),
    slug VARCHAR(50),
    content TEXT,
    duration SMALLINT,
    online BOOLEAN,
    created_at DATETIME
);
*/

-- INSERT, SELECT, UPDATE, DELETE

/*
INSERT INTO recipes (
    title,
    slug,
    content,
    duration,
    online,
    created_at
    ) VALUES (
    'Soupe',
    'soupe',
    'Contenu de test',
    10,
    FALSE,
    1663146833
    );
*/

-- SELECT title, duration FROM recipes;
-- SELECT * FROM recipes;
-- SELECT * FROM recipes WHERE duration < 20;
-- SELECT * FROM recipes WHERE duration BETWEEN 0 AND 30;
-- SELECT * FROM recipes WHERE slug != 'soupe';
-- SELECT * FROM recipes WHERE slug = 'soupe' OR duration > 20;
/* SELECT * FROM recipes WHERE 
    (slug = 'soupe' OR duration > 20) 
    AND online = TRUE; */

/* Opération booléan
TRUE AND TRUE = TRUE
TRUE AND FALSE = FALSE
FALSE AND FALSE = FALSE

TRUE OR FALSE = TRUE
FALSE OR TRUE = TRUE
FALSE OR FALSE = FALSE
*/

-- SELECT * FROM recipes WHERE slug LIKE '%la%';
-- SELECT * FROM recipes;
-- DELETE FROM recipes WHERE title = 'Soupe';
-- UPDATE recipes SET title = 'Soupe de légume' WHERE title = 'Soupe';


-- CLE PRIMAIRES ET INDEX

-- DROP TABLE recipes;
/*
CREATE TABLE recipes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(150),
    slug VARCHAR(50),
    content TEXT,
    duration SMALLINT,
    online BOOLEAN,
    created_at DATETIME
);
*/

-- EXPLAIN QUERY PLAN SELECT * FROM recipes WHERE title = 'Soupe';
-- EXPLAIN QUERY PLAN SELECT * FROM recipes WHERE id = 2;

/*
INSERT INTO recipes (
    title,
    slug,
    content,
    duration,
    online,
    created_at
    ) VALUES (
    'Soupe1',
    'soupe',
    'Contenu de test',
    10,
    FALSE,
    1663146833
    ),
    (
    'Soupe2',
    'soupe',
    'Contenu de test',
    10,
    FALSE,
    1663146833
    );
*/

-- DELETE FROM recipes WHERE id = 2;

-- CREATE UNIQUE INDEX idx_slug ON recipes (slug);

-- UPDATE recipes SET slug = 'soupe2' WHERE id = 4;
