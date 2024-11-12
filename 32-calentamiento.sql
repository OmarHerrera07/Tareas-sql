select  *from users;

-- Nombre, apellido e IP, donde la última conexión se dió de 221.XXX.XXX.XXX

select u.first_name,u.last_name,u.last_connection FROM users u where u.last_connection like '221.%';

-- Nombre, apellido y seguidores(followers) de todos a los que lo siguen más de 4600 personas

select u.first_name, u.last_name, u.followers from users u where u.followers > 4600;


select u.first_name, u.last_name, u.followers from users u where u.followers BETWEEN 4600 and 4700 order by u.followers DESC;


select min(followers) as min_followers, max(followers) max_followers from users;


select round(avg(followers),2) from users;

