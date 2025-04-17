# Analisi dello step di progettazione concettuale

## Primo paragrafo

> Si vuol realizzare un sistema che raccoglie e organizza tutte le informazioni relative alle aree
> protette italiane, offrendo una panoramica completa e dettagliata, e fornendo strumenti utili
> per la pianificazione di visite, la gestione delle aree stesse e dei servizi forniti.

### Info estrapolate
Informazioni sul sistema:
- Raccogliere, organizzare informazioni sulle aree protette
- Fornire strumenti per la pianificazione di visite.

## Secondo paragrafo
> Per ogni parco, il sistema memorizza dettagli come il codice identificativo, il nome, la regione
> in cui si trova, la tipologia (ad esempio, parco nazionale o riserva naturale), l'ente che la
> gestisce, il provvedimento che ne ha sancito l'istituzione, le superfici terrestre e marina, i
> chilometri di costa e altre informazioni utili.

### Info estrapolate
Dati dei parchi:
- Codice Identificativo
- Nome
- Regione
- Tipologia (Parco o riserva naturale)
- Ente che gestisce il parco
- Provvedimento che lo ha istituito
- Superfici terrestre e marina
- Km di costa
- Eventuali altre info utili

## Terzo paragrafo
> Le aree protette sono classificate in base al tipo, seguendo la classificazione ufficiale
> (https://www.mase.gov.it/pagina/classificazione-delle-aree-naturali-protette).
> Inoltre, sul sito sono rappresentate come suddivise per regione. Alcuni parchi partecipano a
> programmi di certificazione come la Carta Europea del Turismo Sostenibile (CETS), che
> promuove pratiche turistiche rispettose dell'ambiente e del patrimonio naturale.

### Info estrapolate
- Parchi e aree protette sono sinonimi? Nel caso del secondo paragrafo **sì**. => Usare come nome **aree naturali protette**.
- Classificazione del tipo di parchi / areee naturali estrapolate dal sito:
    - Parchi nazionali.
    - Parchi naturali regionali e interregionali
    - Riserve naturali
    - Zone umide di interesse internazionale
    - Altre aree naturali protette
    - Aree di reperimento terrestri e marine

> Inoltre, sul sito sono rappresentate come suddivise per regione

Informazione fuorviante in quanto l'informazione è già presente nella area naturale.


> Alcuni parchi partecipano a programmi di certificazione come la Carta Europea del Turismo Sostenibile (CETS)

Si può pensare ad aggiungere un attributo per definire se partecipa al CETS.

## Quarto paragrafo
> Ogni sezione del sito dedicata ad una specifica area protetta ha una pagina dedicata alle
> ultime notizie, complete di data, foto e testo, per tenere aggiornati gli utenti su eventi e
> novità.

### Info estrapolate
Info sul sistema:
- Ogni area protetta ha una pagina dedicata con le ultime notizie.

Info sulle singole notizie riportate nella pagina dell'area protetta:
- data della notizia.
- foto
- testo

## Quinto paragrafo: WIP - Aggiungere info della foto
> Per chi desidera visitare l'area, il sistema deve fornire informazioni sui centri visita sufficienti
> per facilitare l’organizzazione di visite e percorsi. Questo è un esempio.

### Info estrapolate
Info sul sistema:
- Il sistema deve fornire per ogni area protetta informazioni sui centri visita 
  (luoghi di informazione e accoglienza per i visitatori).

## Sesto paragrafo
> Per chi cerca un posto dove alloggiare, il sistema elenca le strutture ricettive nelle vicinanze,
> fornendo dettagli su nome, indirizzo, contatti, servizi offerti, trattamenti disponibili ed
> eventuali impegni ecologici. Alcune di queste strutture sono attrezzate per ospitare scuole o
> gruppi e dispongono di parcheggi adeguati. Inoltre, alcune aderiscono alla Carta Europea
> del Turismo Sostenibile, garantendo un'esperienza rispettosa dell'ambiente.

### Info estrapolate
Info sul sistema: <br/>
- Per ogni area protetta (suppongo pagina di dettaglio), deve fornire info su strutture ricettive (0?,N)
  (struttura che da la possibilità di trovare sistemazione + assistenza / servizi)
- Ci possono essere 0 strutture ricettive nelle vicinanze?

Info da avere per ogni str. ricettiva:
- Nome
- Indirizzo
- Contatti
- Servizi offerti
- Trattamenti disponibili 
- Impegni ecologici? => Testo o booleano?
- Se può ospitare scuole o gruppi
- Se ha parcheggi adeguati? => si riferisce al fatto di ospitare gruppi? tipo gli scuolabus? # FIXME
- Se aderiscono alla CETS (come le info sui parchi) =>
    Ci sono parchi che aderiscono al CETS e str. ricettive che non ci aderiscono e viceversa suppongo

## Settimo paragrafo
> I visitatori possono registrarsi sul sito creando un profilo con username e password, che
> permette loro di inviare richieste di prenotazione alle strutture ricettive, specificando le date
> di soggiorno e il numero di ospiti. Le strutture ricevono queste richieste e, dopo aver
> verificato la disponibilità, possono accettarle o meno.

### Info estrapolate
Info sul sistema:
- Prevedere (0, N) utenti
- Ogni utente richiede str. ricettiva (relazione di richiesta)
- Le strutture ricevono le richieste e possono accettarle o no.

Info su ogni utente:
- username
- password (menzionare hash?)

Info su relazione di richiesta utente-str.ricettiva:
- Data di inizio soggiorno
- Data di fine soggiorno
- N. di ospiti
- Stato di accettazione da parte della str. ricettiva

## Ottavo paragrafo: WIP
> Il sistema tiene traccia dei dati relativi alle presenze di ogni area protetta, registrando orari di
> entrata e uscita, tipologia di utente (senior, bambini, gruppi scolastici, altri gruppi), itinerari
> percorsi e feedback sotto forma di valutazioni a stelle per ogni percorso. Il sistema consente
> ad ogni visitatore di esprimere un giudizio (in stelle), che aggiorna la valutazione degli
> itinerari, e di lasciare un commento. Inoltre, conserva i commenti postati sul sito del parco e
> le valutazioni date alle guide.

### Info estrapolate
Info sul sistema:
- Deve tenere traccia dei dati di presenza nelle aree protette.

Info sulle aree protette:
- Ogni area protetta ha (?, N) itinerari al suo interno, i quali dati sono censiti
  nei dati di presenza delle aree protette.

Info sui dati di presenza nelle aree protette:
- Orario di entrata
- Orario di uscita
- Tipologia di utente (senior, bambini, gruppi scolastici, altri gruppi)
- Itinerari percorsi (sinonimo: percorsi)
    - (?,N) => Va da 0? 
    - Servono informazioni aggiuntive oltre che un testo?

Info sui itinerari:
- giudizio (sin: valutazione, feedback): in stelle (scelgo io quante)
