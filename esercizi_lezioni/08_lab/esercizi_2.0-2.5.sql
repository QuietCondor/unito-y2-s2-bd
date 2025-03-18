-- per eseguire questo script e' necessario aver eseguito 'esercizi_1.0-1.4.sql'
-- in questo folder.
set search_path to lab_07;

begin transaction;
-- 2.0.1. Elencare tutti i fornitori il cui nome contiene una h.
select *
from suppliers
where sname like '%h%';

-- 2.0.2. Elencare tutti i fornitori il cui nome contiene una s.
select *
from suppliers
where sname like '%s%';

-- 2.0.3. Elencare tutti i fornitori che hanno nel nome una a e terminano con una s.
select *
from suppliers
where sname like '%a%s';

-- 2.0.4. Elencare tutti i fornitori il cui nome contiene sia una a che una e.
select *
from suppliers
where sname like '%a%' and sname like '%e%';

-- 2.0.5. Elencare tutti i fornitori il cui nome contiene tutte le vocali.
insert into suppliers(snum, sname, status, city) values
    ('S6', 'AeIoU', 30, 'Turin'),
    ('S7', 'Nut', 30, 'Turin')
;

select *
from suppliers
where
    sname ilike '%a%' and
    sname ilike '%e%' and
    sname ilike '%i%' and
    sname ilike '%o%' and
    sname ilike '%u%' 
;

-- 2.0.6. Elencare tutti i fornitori il cui nome coincide con il nome di una parte.
select *
from suppliers s
    inner join parts p on p.pname = s.sname
;

-- 2.0.7. Elencare tutte le parti con un nome lungo almeno 4 caratteri.
select *
from parts
where length(pname) >= 4;

-- 2.1.1. Elencare il nome di tutte le parti rosse con peso compreso tra 13 kg e 17 kg.
select *
from parts
where
    color = 'Red' and
    weight >= 13 and
    weight <= 17
;

-- 2.1.2. Elencare il nome di tutti i fornitori di Atene (Athens) con Status inferiore a 20.
select *
from suppliers
where
    city = 'Athens' and
    status <= 20
;

-- 2.1.3. Quali sono le parti disponibili nella stessa città di un fornitore
--        (non necessariamente fornite da quel fornitore)?
--        Elencare nome, colore e peso delle parti e nome del fornitore.
select
    p.pname,
    p.color,
    p.weight,
    s.sname
from parts p
    inner join suppliers s on s.city = p.city
;

-- 2.4.1. Elencare, in ordine alfabetico crescente, il nome dei fornitori
--        che hanno evaso almeno una volta ordini di almeno 300 bulloni
--        (bolt) o di almeno 300 dadi (nut).
select s.*, sup.qty, p.pname
from suppliers s
    inner join supply sup on sup.snum = s.snum
    inner join parts p on p.pnum = sup.pnum
where
    sup.qty >= 300 and
    (
        p.pname = 'Bolt' or
        p.pname = 'Screw'
    )
order by sname asc
;

-- 2.5.1 Elencare, in ordine di status decrescente, i fornitori che hanno fornito
--       parti con peso fuori dall’intervallo [14 kg, 17 kg].
--       Mostrare il nome del fornitore e il suo status.
select
    --s.*, sup.qty, p.weight
    distinct s.sname, s.status
from suppliers s
    inner join supply sup on sup.snum = s.snum
    inner join parts p on p.pnum = sup.pnum
where
    p.weight > 17 or p.weight < 14 
order by s.status
;

rollback;
set search_path to public;
