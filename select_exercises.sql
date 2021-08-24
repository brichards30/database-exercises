use codeup_test_db;

#All albums by Michael Jackson
select 'All albums by Michael Jackson', name from albums where artist = 'Michael Jackson';

#Year The Bodyguard was released
select 'The year The Bodyguard was released', release_date from albums where name = 'The Bodyguard';

#Genre for Nevermind
select 'The genre(s) for Nevermind is', genre from albums where name = 'Nevermind';

#Albums released in 1990s
select 'The album(s) released in the 1990s are', name, artist, release_date from albums where release_date BETWEEN 1990 AND 1999;

#Albums less than 20 million certified units
select 'The album(s) with less than 20 million certified sales', name, artist from albums where sales < 20;

#Albums with genre of rock
select 'Albums with genre of Rock', name from albums where genre = 'rock';

#Albums with all subgenres of rock
# select 'Albums with genre of Rock', name, genre from albums where genre like '%rock%';
