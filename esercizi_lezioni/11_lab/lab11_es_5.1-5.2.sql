-- Active: 1742326609985@@postgres@5432@dbcarlospalominoa
--------------------------------------------------------------------------------------------
-- NOTA:
-- Eseguire lo script esercizi_1.0-1.4.sql per seedare il DB con i dati di partenza.
--------------------------------------------------------------------------------------------

-- 5.1.a: Elencare i fornitori che forniscono parti
--        disponibili a Londra: Versione con costrutto IN/NOT IN:
select distinct s.*
from lab_07.suppliers s
    inner join lab_07.supply sp on sp.snum = s.snum
    inner join lab_07.parts p on p.pnum = sp.pnum
where
    p.pnum in (select p2.pnum from lab_07.parts p2 where p2.city = 'London')
order by snum
;
-- risultato: S1, S2, S4

-- #region 5.1.a / 5.1.b: query di test
select *
from lab_07.parts p
where p.city = 'London';
-- P1, P4, P6

select distinct sp.snum
from lab_07.supply sp
where sp.pnum in ('P1', 'P4', 'P6')
order by snum;
-- S1, S2, S4
-- #endregion

-- 5.1.a: Elencare i fornitori che forniscono parti
--        disponibili a Londra: Versione con costrutto ANY/ALL:
select *
from lab_07.suppliers s
where s.snum = any(
    select sp.snum
    from lab_07.supply sp
        inner join lab_07.parts p on p.pnum = sp.pnum
    where
        p.city = 'London'
)
order by snum;
-- risultato: S1, S2, S4

-- 5.2.a: Elencare le città in cui non vi sono fornitori con
--        status minore della media: con in/not
select distinct s.city
from lab_07.suppliers s
where s.city not in (
    select 
        s2.city
    from lab_07.suppliers s2
    where
        s2.status < (select avg(s3.status) from lab_07.suppliers s3 )
);
-- Risultato: Athens

-- #region query check

-- 0. media dello status
select avg(s3.status) from lab_07.suppliers s3;
-- risultato: 22

-- 1. status minori della media
select 
    s2.city
from lab_07.suppliers s2
where
    s2.status < (select avg(s3.status) from lab_07.suppliers s3 );
-- risultato: london, paris, london

-- uso di not in per escludere questi e avere quelli superiori alla media
select distinct s.city
from lab_07.suppliers s
where s.city not in ('London', 'Paris');
-- Risultato: Athens
 
-- #endregion

-- 5.2.a: Elencare le città in cui non vi sono fornitori con
--        status minore della media: con any/all
select distinct s.city
from lab_07.suppliers s
where s.city <> all(
    select s2.city
    from lab_07.suppliers s2
    where s2.status <= (select avg(s3.status) from lab_07.suppliers s3)
);
-- Risultato: Athens