use codeup_test_db;

select 'All albums by Michael Jackson', name from albums where artist = 'Michael Jackson';
select 'The year Dangerous was released', release_date from albums where name = 'Dangerous';
select 'The genre for The Bodyguard is', genre from albums where name = 'The Bodyguard';
select 'The album(s) released in the 1990s are', name from albums where release_date BETWEEN 1990 AND 1999;
select 'The album(s) with less than 20 million certified sales', name from albums where sales < 20;
