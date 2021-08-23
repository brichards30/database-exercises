use codeup_test_db;

# select 'Album(s) released after 1991', name, artist from albums where release_date > 1991;
# select 'Album(s) with the genre pop', name, artist from albums where genre = 'pop';
# select 'Album(s) from Fleetwood Mac', name from albums where artist = 'Fleetwood Mac';

delete from albums where release_date > 1991;
delete from albums where genre = 'disco';
delete from albums where artist = 'Nirvana';