use codeup_test_db;

select *, 'All albums' from albums;
update albums
set sales = sales * 10;
select *, 'All albums' from albums;



select 'All albums before 1980', name from albums where release_date < 1980;
update albums
set release_date = 1901
where release_date < 1980;
select 'All albums before 1980', name, release_date from albums where release_date = 1901;


select 'All albums by Michael Jackson', name from albums where artist = 'Michael Jackson';
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';
select 'All albums by Peter Jackson', name from albums where artist = 'Peter Jackson';
