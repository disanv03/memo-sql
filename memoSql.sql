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

-- EXPLAIN QUERY PLAN SELECT * FROM recipes WHERE slug = 'soupe';

-- PRAGMA index_list('recipes');

-- DROP INDEX idx_slug;
/*
 CREATE TABLE recipes (
    id INTEGER PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    slug VARCHAR(150) NOT NULL UNIQUE,
    content TEXT DEFAULT 'hello' NOT NULL,
    duration SMALLINT DEFAULT 10 NOT NULL,
    online BOOLEAN,
    created_at DATETIME
);*/

/*INSERT INTO recipes(
    title,
    slug,
    online,
    created_at
    ) VALUES (
    'Soupe1',
    'soupe-2',
    FALSE,
    1642696734
);*/

-- SELECT * FROM recipes WHERE content IS NULL;
-- SELECT * FROM recipes WHERE content IS NOT NULL;

-- UPDATE recipes SET content = NULL;
-- DROP TABLE recipes


-- CLES ETRANGERES ET JOINTURES

CREATE TABLE IF NOT EXISTS categories(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT
);

INSERT INTO categories(title)
VALUES('Plat'),('Dessert');

CREATE TABLE recipes(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title VARCHAR(150) NOT NULL,
    slug VARCHAR(50) NOT NULL UNIQUE,
    content TEXT,
    category_id INTEGER, 
    FOREIGN KEY (category_id) REFERENCES categories(id)
); 

INSERT INTO recipes (title, slug, category_id)
    VALUES
    ('Creme Anglaise', 'creme-anglaise', 2),
    ('Soupe', 'soupe', 1),
    ('Salade de fruit', 'salade-de-fruit', 2);


