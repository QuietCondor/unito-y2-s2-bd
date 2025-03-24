--------------------------------------------------------------------------------------------
-- NOTA:
-- Eseguire lo script esercizi_1.0-1.4.sql per seedare il DB con i dati di partenza.
--------------------------------------------------------------------------------------------

-- 4.1.a Estrarre la quantità totale di parti rosse fornite da ciascun fornitore
--       escludendo i fornitori che non forniscono parti rosse 
--       (mostrare nome del fornitore e quantità totale di parti).
select 
    -- p.pnum,
    -- sp.snum
    s.snum,
    s.sname,
    count(*)
from parts p
    inner join supply sp on p.pnum = sp.pnum
    inner join suppliers s on s.snum = sp.snum
where
    p.color = 'Red'
group by s.snum, s.sname
;

-- 4.1.b Estrarre la quantità totale di parti rosse fornite da ciascun fornitore
--       compresi i fornitori che non forniscono nessuna parte, per i quali dovete
--       mostrare 0 (mostrare nome del fornitore e quantità totale di  parti).
select 
    -- p.pnum,
    -- sp.snum
    s.snum,
    s.sname,
    count(p.color) as color_count
from suppliers s
    left join supply sp on s.snum = sp.snum
    left join parts p on p.pnum = sp.pnum
where
    p.color = 'Red' or p.color is null
group by s.snum, s.sname
;

-- 4.1.c Estrarre la quantità totale di parti rosse fornite da ciascun fornitore compresi
--       i fornitori che non forniscono nessuna parte rossa (mostrare nome del fornitore e
--       quantità totale di parti) (suggerimento: sfruttare la condizione del join)
select
    s.snum,
    s.sname,
    -- p.color
    count(p.color) as color_count
from suppliers s
    left join supply sp on s.snum = sp.snum
    left join parts p on p.pnum = sp.pnum and p.color = 'Red'
group by s.snum, s.sname
;

-- 4.2   Considerando solo forniture di oltre 100 parti, estrarre le città in cui i fornitori,
--       considerati insieme, forniscono in totale almeno 1000 parti (mostrare la città e la
--       quantità totale di parti).
select
    --sp.*,
    s.city
    ,count(s.city)
    ,sum(sp.qty)
from supply sp
    inner join suppliers s on s.snum = sp.snum
where
    qty > 100
group by 
    s.city
;

-- 4.3   Estrarre le città in cui ci sono almeno due fornitori che hanno fornito ognuno
--       almeno due prodotti di diverso colore (suggerimento: scrivere prima la query che
--       estrae le informazioni sulle coppie di parti di diverso colore fornite dallo stesso fornitore)
select 
    p.pnum,
    s.snum,
    p.color,
    s.city
from supply sp
    inner join suppliers s on s.snum = sp.snum
    inner join parts p on p.pnum = sp.pnum
order by city, pnum
;

select 
    s.snum,
    p.color,
    s.city,
    count(p.color) as color_count
    -- distinct s.city
from suppliers s
    inner join supply sp on sp.snum = s.snum
    inner join parts p on p.pnum = sp.pnum
    -- inner join parts p2 on p2.pnum = p.pnum and p.color != p2.color
group by
    s.snum, p.color, s.city
having 
    count(p.color) > 2
;