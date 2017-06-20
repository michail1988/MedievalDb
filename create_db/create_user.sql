create user 'medievaluser'@'localhost' identified by 'medievaluser3306';

grant all privileges on medieval.* to 'medievaluser'@'localhost' with grant option;
grant trigger on medieval.* to 'medievaluser'@'localhost';

flush privileges;