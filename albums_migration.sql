USE codeup_test_db;
drop table if exists albums;

create table albums
(
    id     INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(200) NOT NULL,
    name   VARCHAR(200) NOT NULL,
    release_date YEAR,
    sales  FLOAT,
    genre  VARCHAR(200),
    PRIMARY KEY (id)
);

describe albums;




