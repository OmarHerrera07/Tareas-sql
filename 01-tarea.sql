

-- 1. Ver todos los registros

select *from users order by id DESC;


-- 2. Ver el registro cuyo id sea igual a 10

select *from users u  where u.id = 10;


-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)
 
select *from users u where u.name like 'Jim %';


-- 4. Todos los registros cuyo segundo nombre es Alexander

select *from users u where u.name like '% Alexander';


-- 5. Cambiar el nombre del registro con id = 1, por tu nombre Ej:'Fernando Herrera'

update users set name = 'Omar Herrera' where id = 1; 


-- 6. Borrar el último registro de la tabla

DELETE from users where id = 3980;

delete from users where id = (select max(id) from users);