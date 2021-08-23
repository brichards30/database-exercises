USE codeup_test_db;
drop table if exists albums;

create table albums
(
    id     INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name   VARCHAR(50) NOT NULL,
    release_date YEAR,
    sales  FLOAT,
    genre  VARCHAR(20),
    PRIMARY KEY (id)
);

describe albums;




