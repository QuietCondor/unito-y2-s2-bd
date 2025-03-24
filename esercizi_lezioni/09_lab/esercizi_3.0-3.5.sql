--------------------------------------------------------------------------------------------
-- NOTA:
-- Eseguire lo script esercizi_1.0-1.4.sql per seedare il DB con i dati di partenza.
--------------------------------------------------------------------------------------------

-- 3.1 Elencare tutti i fornitori con Status superiore a 20 e la quantità delle parti eventualmente fornite.
select s.*, sp.qty
from suppliers s
    inner join supply sp on s.snum = sp.snum
    inner join parts p on p.pnum = sp.pnum
where status > 20;

-- 3.2 Elencare i nomi di tutte le parti di colore verde e le città dei loro eventuali fornitori.
select 
    -- *
    distinct p.pname, s.city
from parts p
    inner join supply sp on sp.pnum = p.pnum
    inner join suppliers s on s.snum = sp.snum
where p.color = 'Green';

-- 3.3 Elencare tutti i fornitori che hanno forniture minori di 200 parti (e quindi anche i fornitori 
--     che non hanno fornito nulla). Il risultato deve comprendere il nome del fornitore e la
--     quantità delle parti eventualmente fornite.
select
    s.snum, s.sname, sp.qty
from suppliers s
    inner join supply sp on s.snum = sp.snum
where
    sp.qty < 200
;