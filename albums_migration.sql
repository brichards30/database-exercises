USE codeup_test_db;

create table albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    name VARCHAR (50) NOT NULL,
    release_date YEAR UNSIGNED NOT NULL,
    sales FLOAT UNSIGNED NOT NULL,
    genre VARCHAR (20) DEFAULT 'NONE',
    PRIMARY KEY (id)
);
