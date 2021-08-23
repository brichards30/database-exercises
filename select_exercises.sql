use codeup_test_db;

select 'All albums by Michael Jackson', name from albums where artist = 'Michael Jackson';
select 'The year The Bodyguard was released', release_date from albums where name = 'The Bodyguard';
select 'The genre(s) for Nevermind is', genre from albums where name = 'Nevermind';
select 'The album(s) released in the 1990s are', name, artist, release_date from albums where release_date BETWEEN 1990 AND 1999;
select 'The album(s) with less than 20 million certified sales', name, artist from albums where sales < 20;
