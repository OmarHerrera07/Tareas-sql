select
    *
from
    users u;
-- 1. Cuantos usuarios tenemos con cuentas @google.com
    -- Tip: count, like
select
    count(*)
from
    users u
where
    u.email LIKE '%@google.com';
-- 2. De qué países son los usuarios con cuentas de @google.com
    -- Tip: distinct
select
    DISTINCT u.country
from
    users u
where
    u.email LIKE '%@google.com';
-- 3. Cuantos usuarios hay por país (country)
    -- Tip: Group by
select
    u.country,
    COUNT(*) as total
from
    users u
GROUP by
    u.country;
-- 4. Listado de direcciones IP de todos los usuarios de Iceland
    -- Campos requeridos first_name, last_name, country, last_connection
select
    u.first_name,
    u.last_name,
    u.country,
    u.last_connection
from
    users u
where
    u.country = 'Iceland';
-- 5. Cuantos de esos usuarios (query anterior) tiene dirección IP
    -- que incia en 112.XXX.XXX.XXX
select
    count(*) as total
from
    users u
where
    u.country = 'Iceland'
    and u.last_connection LIKE '112.%';
-- 6. Listado de usuarios de Iceland, tienen dirección IP
    -- que inicia en 112 ó 28 ó 188
    -- Tip: Agrupar condiciones entre paréntesis
select
    u.first_name,
    u.last_name,
    u.country,
    u.last_connection
from
    users u
where
    u.country = 'Iceland'
    and (
        u.last_connection like '112.%'
        or u.last_connection LIKE '28.%'
        or u.last_connection LIKE '188.%'
    );
-- 7. Ordene el resultado anterior, por apellido (last_name) ascendente
    -- y luego el first_name ascendentemente también
select
    u.first_name,
    u.last_name,
    u.country,
    u.last_connection
from
    users u
where
    u.country = 'Iceland'
    and (
        u.last_connection like '112.%'
        or u.last_connection LIKE '28.%'
        or u.last_connection LIKE '188.%'
    )
ORDER by
    u.last_name DESC,
    u.first_name ASC;
-- 8. Listado de personas cuyo país está en este listado
    -- ('Mexico', 'Honduras', 'Costa Rica')
    -- Ordenar los resultados de por País asc, Primer nombre asc, apellido asc
    -- Tip: Investigar IN
    -- Tip2: Ver Operadores de Comparación en la hoja de atajos (primera página)
SELECT
    *
FROM
    users u
where
    u.country IN ('Mexico', 'Honduras', 'Costa Rica')
ORDER by
    u.country DESC,
    u.first_name ASC,
    u.last_name ASC;
-- 9. Del query anterior, cuente cuántas personas hay por país
    -- Ordene los resultados por País asc
SELECT
    COUNT(*) as total,
    u.country
FROM
    users u
where
    u.country IN ('Mexico', 'Honduras', 'Costa Rica')
GROUP by
    u.country
ORDER by
    u.country ASC;