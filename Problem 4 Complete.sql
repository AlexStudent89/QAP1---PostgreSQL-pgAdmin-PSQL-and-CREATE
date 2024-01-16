
CREATE DATABASE library_database;

CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);


CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    publication_year INT,
    author_id INT REFERENCES authors(author_id) ON DELETE CASCADE
);

INSERT INTO authors (author_name) VALUES
    ('John Dot'),
    ('Jane Dot'),
    ('Bob Dot');


INSERT INTO books (title, author_id) VALUES
    ('Introduction to SQL', 1),
    ('Database Design Basics', 2),
    ('Advanced SQL Queries', 1),
    ('Data Modeling Techniques', 3);