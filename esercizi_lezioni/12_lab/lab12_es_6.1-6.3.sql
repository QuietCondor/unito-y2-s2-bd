--------------------------------------------------------------------------------------------
-- NOTA:
-- Eseguire lo script esercizi_1.0-1.4.sql per seedare il DB con i dati di partenza.
--------------------------------------------------------------------------------------------

-- 6.1.a: Trovare i codici dei prodotti che hanno il peso massimo
--        Versione con query correlata.
select *
from lab_07.parts p
where p.weight >= (select max(p2.weight) from lab_07.parts p2 );
-- risultato: P6 (Weight 19) OK

-- 6.1.a: Trovare i codici dei prodotti che hanno il peso massimo
--        Versione con NOT EXISTS.
select *
from lab_07.parts p
where not exists(
    select * 
    from lab_07.parts p2 
    where p2.weight > p.weight
);
-- risultato: P6 (Weight 19) OK

-- 6.2: Trovare i nomi dei fornitori che forniscono tutte le
--      parti
select *
from lab_07.suppliers s
where not exists(
    select *
    from lab_07.parts p
    where p.pnum not in (select sp.pnum from lab_07.supply sp where sp.snum = s.snum)
);
-- risultato: S1

-- #region query check
select sp.*
from supply sp;
-- risultato: [P1 -> (P1, .., P6),...,] -> S1 e' corretto
-- #endregion

-- 6.3: Trovare i nomi dei fornitori che forniscono almeno tutti i prodotti forniti da S2
select sp.*
from lab_07.supply sp
where 
    sp.pnum in (
        select sp2.pnum
        from lab_07.supply sp2
        where 
            sp2.snum = 'S2'
    );

select *
from suppliers s
where not exists(
    select sp2.pnum
    from lab_07.supply sp2
    where 
        sp2.snum = 'S2'
        and not exists(
            select *
            from lab_07.supply sp3
            where 
                sp3.snum = s.snum
                and sp2.pnum = sp3.pnum
        )
    );

-- #region check query
select *
from lab_07.supply sp
where sp.snum = 'S2';
-- Risultato = [P1, P2]

select sp.*
from lab_07.supply sp
where sp.pnum in ('P1', 'P2');
-- Risultato corretto = [S1, S2]
-- #endregion