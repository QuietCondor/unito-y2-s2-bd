# Analisi dello step di progettazione concettuale

## Primo paragrafo

> Si vuol realizzare un sistema che raccoglie e organizza tutte le informazioni relative alle aree
> protette italiane, offrendo una panoramica completa e dettagliata, e fornendo strumenti utili
> per la pianificazione di visite, la gestione delle aree stesse e dei servizi forniti.

### Info estrapolate
Informazioni sul sistema:
- Raccogliere e organizzare informazioni sulle aree protette in Italia.
- Fornire strumenti per:
  - Pianificazione di visite.
  - Gestione delle aree protette.
  - Gestione dei servizi forniti.

## Secondo paragrafo
> Per ogni parco, il sistema memorizza dettagli come il codice identificativo, il nome, la regione
> in cui si trova, la tipologia (ad esempio, parco nazionale o riserva naturale), l'ente che la
> gestisce, il provvedimento che ne ha sancito l'istituzione, le superfici terrestre e marina, i
> chilometri di costa e altre informazioni utili.

### Info estrapolate
Dati dei parchi/aree protette:
- Codice Identificativo
- Nome
- Regione
- Tipologia (Parco o riserva naturale)
- Ente che gestisce il parco
- Provvedimento che lo ha istituito
- Superfice terrestre
- Superfice marina
- Km di costa
- Eventuali altre info utili

## Terzo paragrafo
> Le aree protette sono classificate in base al tipo, seguendo la classificazione ufficiale
> (https://www.mase.gov.it/pagina/classificazione-delle-aree-naturali-protette).
> Inoltre, sul sito sono rappresentate come suddivise per regione. Alcuni parchi partecipano a
> programmi di certificazione come la Carta Europea del Turismo Sostenibile (CETS), che
> promuove pratiche turistiche rispettose dell'ambiente e del patrimonio naturale.

### Info estrapolate
> Le aree protette sono classificate in base al tipo, seguendo la classificazione ufficiale
> (https://www.mase.gov.it/pagina/classificazione-delle-aree-naturali-protette).

Informazioni sulle aree protette:
- Classificazione del tipo di areee naturali estrapolate dal sito:
    - Parchi nazionali.
    - Parchi naturali regionali e interregionali
    - Riserve naturali
    - Zone umide di interesse internazionale
    - Altre aree naturali protette
    - Aree di reperimento terrestri e marine

> Inoltre, sul sito sono rappresentate come suddivise per regione

Informazioni sul sistema:
- Il sistema offre una vista dei parchi raggrupata per regione nel sito.


> Alcuni parchi partecipano a programmi di certificazione come la Carta Europea del Turismo Sostenibile (CETS)

Informazioni sulle aree protette:
- Partecipazione a programmi (0,N) di certificazione (es: CETS)

## Quarto paragrafo
> Ogni sezione del sito dedicata ad una specifica area protetta ha una pagina dedicata alle
> ultime notizie, complete di data, foto e testo, per tenere aggiornati gli utenti su eventi e
> novità.

### Info estrapolate
> Ogni sezione del sito dedicata ad una specifica area protetta ha una pagina dedicata alle
> ultime notizie, [...]

Info sul sistema:
- Ogni sezione del sito dedicata ad un'area protetta ha una pagina dedicata con le ultime notizie.

> [...] complete di data, foto e testo, per tenere aggiornati gli utenti su eventi e
> novità.

Info sulle notizie:
- data della notizia.
- foto
- testo

## Quinto paragrafo:
> Per chi desidera visitare l'area, il sistema deve fornire informazioni sui centri visita sufficienti
> per facilitare l’organizzazione di visite e percorsi. Questo è un esempio.

### Info estrapolate
> Per chi desidera visitare l'area, il sistema deve fornire informazioni sui centri visita sufficienti
> per facilitare l’organizzazione di visite e percorsi. [...]

Info sul sistema:
- Il sistema fornisce informazioni sui centri visita per ogni area protetta
  (luoghi di informazione e accoglienza per i visitatori).

Info sul centro visita:
- Nome
- Titolo sommario
- Indirizzo:
  - Via
  - Cap
  - Comune
  - Frazione
  - Regione
- Descrizione
- Logo
- Orari:
  - Mesi di apertura
  - Giorno sett. di apertura
    - Range mattino
    - Range pomeriggio
- Modalità di fruizione


## Sesto paragrafo
> Per chi cerca un posto dove alloggiare, il sistema elenca le strutture ricettive nelle vicinanze,
> fornendo dettagli su nome, indirizzo, contatti, servizi offerti, trattamenti disponibili ed
> eventuali impegni ecologici. Alcune di queste strutture sono attrezzate per ospitare scuole o
> gruppi e dispongono di parcheggi adeguati. Inoltre, alcune aderiscono alla Carta Europea
> del Turismo Sostenibile, garantendo un'esperienza rispettosa dell'ambiente.

### Info estrapolate
Info sul sistema:
- Fornisce informazioni sulle strutture ricettive (0,N) per ogni area protetta.

Info da avere per ogni str. ricettiva:
- Nome
- Indirizzo
- Contatti
- Servizi offerti
- Trattamenti disponibili 
- Impegni ecologici
  - Adesione al CETS
  - Altri impegni ecologici
- Possibilità di ospitare scuole o gruppi
  - Disponibilità di parcheggi adeguati

## Settimo paragrafo
> I visitatori possono registrarsi sul sito creando un profilo con username e password, che
> permette loro di inviare richieste di prenotazione alle strutture ricettive, specificando le date
> di soggiorno e il numero di ospiti. Le strutture ricevono queste richieste e, dopo aver
> verificato la disponibilità, possono accettarle o meno.

### Info estrapolate
> I visitatori possono registrarsi sul sito creando un profilo [...]
> permette loro di inviare richieste di prenotazione alle strutture ricettive [...]
> Le strutture ricevono queste richieste e [...] possono accettarle o meno.

Info sul sistema:
- Prevede la gestione di (0,N) utenti
- Possibilità di invio richieste di prenotazione alle strutture ricettive da parte degli utenti.

> I visitatori possono registrarsi sul sito creando un profilo con username e password, [...]

Info su ogni utente:
- username
- password

Info su relazione di richiesta utente-str.ricettiva:
- Data di inizio soggiorno
- Data di fine soggiorno
- N. di ospiti
- Stato di accettazione da parte della str. ricettiva

## Ottavo paragrafo:
> Il sistema tiene traccia dei dati relativi alle presenze di ogni area protetta, registrando orari di
> entrata e uscita, tipologia di utente (senior, bambini, gruppi scolastici, altri gruppi), itinerari
> percorsi e feedback sotto forma di valutazioni a stelle per ogni percorso. Il sistema consente
> ad ogni visitatore di esprimere un giudizio (in stelle), che aggiorna la valutazione degli
> itinerari, e di lasciare un commento. Inoltre, conserva i commenti postati sul sito del parco e
> le valutazioni date alle guide.

### Info estrapolate

> Il sistema tiene traccia dei dati relativi alle presenze di ogni area protetta [...]
> [...] Inoltre, conserva i commenti postati sul sito del parco e
> le valutazioni date alle guide.

Info sul sistema:
- Per ogni area protetta:
  - Tiene traccia dei dati di presenza
  - Conserva le valutazioni date dai visitatori a itinerari e guide.


> [...] dati relativi alle presenze di ogni area protetta, registrando orari di
> entrata e uscita, tipologia di utente (senior, bambini, gruppi scolastici, altri gruppi),

Info sui dati di presenza nelle aree protette:
- Orario di entrata
- Orario di uscita
- Tipologia di visitatore:
  - senior
  - bambini
  - gruppi scolastici
  - altri gruppi
- Itinerari percorsi (0, N)

Info sulle aree protette:
- Ogni area protetta ha (0, N) itinerari al suo interno.

> [...] itinerari
> percorsi e feedback sotto forma di valutazioni a stelle per ogni percorso
> [...] Il sistema consente
> ad ogni visitatore di esprimere un giudizio (in stelle), che aggiorna la valutazione degli
> itinerari, e di lasciare un commento

Info sui itinerari:
- Giudizio: 
  - stelle
  - commento

> [...] Inoltre, conserva i commenti postati sul sito del parco e
> le valutazioni date alle guide.

Info sulle guide:
- Guidizio:
  - stelle
  - commento

## Nono paragrafo:
> Il sistema permette di prenotare visite guidate in orari specifici con delle guide abilitate i cui 
> estremi  (licenze,  itinerari  disponibili  per ciascuna guida, valutazioni da parte degli utenti 
> passati, e calendario con le loro disponibilità) sono resi disponibili agli operatori turistici ed ai 
> visitatori.  Ogni  itinerario  può  essere  associato  a  una  o  più  guide  abilitate, e il sistema 
> mantiene un registro aggiornato delle guide disponibili in ogni momento. Nella pagina degli 
> itinerari, viene mostrato il numero di guide abilitate e il numero di quelle disponibili. 

### Info estrapolate:
> Il sistema permette di prenotare visite guidate in orari specifici con delle guide abilitate i cui 
> estremi [...] sono resi disponibili agli operatori turistici ed ai visitatori.

Informazioni sul sistema:
- Permette la prenotazione di visite guidate con delle guide abilitate.
- Consente la consultazione degli estremi delle guide a operatori turistici e visitatori.

Informazioni sulle Guide Abilitate:
- Licenze (0, N)
- Itinerari disponibili (0,N)
- Valutazioni degli utenti (0,N)
- Calendario con disponibilità (0,N)

Informazioni sugli Utenti:
- Ruoli:
  - Operatore Turistico
  - Visitatore

> Ogni  itinerario  può  essere  associato  a  una  o  più  guide  abilitate [...]

Informazioni sugli itinerari:
- Associato a Guide abilitate (0,N)

> [...] il sistema mantiene un registro aggiornato delle guide disponibili in ogni momento. Nella pagina 
> degli itinerari, viene mostrato il numero di guide abilitate e il numero di quelle disponibili. 

Informazioni sul Sistema:
- Prevede delle pagine di consultazione degli itinerari di un'area protetta:
  - Consente la consultazione delle guide disponibili e delle guide abilitate

## Decimo paragrafo:
> Per  quanto  riguarda  le  visite  guidate,  il  sistema  organizza  un  numero  definito  di  tour 
> programmati per ogni itinerario, ciascuno con un numero massimo di partecipanti, uno stato 
> attuale e una guida assegnata tra quelle abilitate. I gestori del parco possono consultare uno 
> storico delle visite effettuate in ogni anno, utile per analisi di mercato e miglioramento dei 
> servizi offerti.

### Info estrapolate:

> Per  quanto  riguarda  le  visite  guidate,  il  sistema  organizza  un  numero  definito  di  tour 
> programmati per ogni itinerario [...].

Info sul sistema:
- Organizza un numero definito di tour programmati per ogni itinerario.

> [...] ciascuno con un numero massimo di partecipanti, uno stato 
> attuale e una guida assegnata tra quelle abilitate.

Informazioni sulle visite guidate:
- Numero massimo di partecipanti
- Stato attuale
- Guida assegnata (1,1)

> I gestori del parco possono consultare uno 
> storico delle visite effettuate in ogni anno [...]

Informazioni sugli Utenti:
- Ruoli:
  - [...]
  - Gestore del parco

Informazioni sul Sistema:
- Possibilità di consultazione di storico delle visite annuali da parte dei gestori del parco

### Sinonimi trovati
- Tour <> Visite guidate

# Informazioni

## Informazioni sul sistema
- Raccogliere e organizzare informazioni sulle aree protette in Italia.
  - Il sistema offre una vista delle aree protette raggrupata per regione nel sito.
  - Il sistema offre una vista di dettaglio delle aree protette.
    - Ogni sezione del sito dedicata ad un'area protetta ha:
      - Una pagina dedicata con le ultime notizie.
      - Una pagina o area con informazioni sui centri visita.
  - Tiene traccia dei dati di presenza.
  - Prevede delle pagine di consultazione degli itinerari di un'area protetta:
    - Consente la consultazione delle guide disponibili e delle guide abilitate
- Fornire strumenti per:
  - Pianificazione di visite.
    - Permette la prenotazione di visite guidate con delle guide abilitate.
      - Conserva le valutazioni date dai visitatori a itinerari e guide.
      - Organizza un numero definito di tour programmati per ogni itinerario.
  - Gestione delle aree protette.
  - Gestione dei servizi forniti.
    - Possibilità di invio richieste di prenotazione alle strutture ricettive da parte degli utenti.
    - Fornisce informazioni sulle strutture ricettive (0,N) per ogni area protetta.
- Prevede la gestione di (0,N) utenti
  - Consente la consultazione degli estremi delle guide a operatori turistici e visitatori.
  - Possibilità di consultazione di storico delle visite annuali da parte dei gestori del parco.


## Informazioni sulle aree protette
Dati delle aree protette:
- Codice Identificativo
- Nome
- Regione
- Tipologia:
  - Parchi nazionali.
  - Parchi naturali regionali e interregionali
  - Riserve naturali
  - Zone umide di interesse internazionale
  - Altre aree naturali protette
  - Aree di reperimento terrestri e marine
- Ente che gestisce il parco
- Provvedimento che lo ha istituito
- Superfice terrestre
- Superfice marina
- Km di costa
- Eventuali altre info utili
- Partecipazione a programmi (0,N) di certificazione (es: CETS)
- Presenza di (0, N) itinerari al suo interno.

## Informazioni sulle notizie
Dati delle notizie:
- Data della notizia.
- Foto
- Testo

## Informazioni sul centro visita
Info sul centro visita:
- Nome
- Titolo sommario
- Indirizzo:
  - Via
  - Cap
  - Comune
  - Frazione
  - Regione
- Descrizione
- Logo
- Orari:
  - Mesi di apertura
  - Giorno sett. di apertura
    - Range mattino
    - Range pomeriggio
- Modalità di fruizione

## Informazioni sulla struttura ricettiva
Info da avere per ogni str. ricettiva:
- Nome
- Indirizzo
- Contatti
- Servizi offerti
- Trattamenti disponibili 
- Impegni ecologici
  - Adesione al CETS
  - Altri impegni ecologici
- Possibilità di ospitare scuole o gruppi
  - Disponibilità di parcheggi adeguati

## Informazioni sugli utenti
Info su ogni utente:
- username
- password
- Ruolo:
  - Gestore del parco
  - Operatore Turistico
  - Visitatore

## Informazioni sulle prenotazioni per le str. ricettive
Info su relazione di richiesta utente-str.ricettiva:
- Data di inizio soggiorno
- Data di fine soggiorno
- N. di ospiti
- Stato di accettazione da parte della str. ricettiva

## Informazioni sulle aree di presenza delle aree protette
Info sui dati di presenza nelle aree protette:
- Orario di entrata
- Orario di uscita
- Tipologia di visitatore:
  - senior
  - bambini
  - gruppi scolastici
  - altri gruppi
- Itinerari percorsi (0, N)

## Informazioni sugli itinerari

Info sui itinerari:
- Associato a Guide abilitate (0,N)
- Giudizio dei visitatori: 
  - stelle
  - commento

## Informazioni sulle guide

Info sulle guide:
- Licenze (0, N)
- Itinerari disponibili (0,N)
- Valutazioni degli utenti (0,N)
  - stelle
  - commento
- Calendario con disponibilità (0,N)

## Informazioni sulle visite guidate
Informazioni sulle visite guidate:
- Numero massimo di partecipanti
- Stato attuale
- Guida assegnata (1,1)

# Glossario dei termini
<table>
  <tr>
    <th>Termine</th>
    <th>Descrizione</th>
    <th>Sinonimi</th>
    <th>Collegamenti</th>
  </tr>
  <tr>
    <td>Area Protetta</td>
    <td>Territori ricchi di biodiversità e beni archeologici, storici architettonici e artistici.</td>
    <td>Parco</td>
    <td>Ente</td>
  </tr>
  <tr>
    <td>Ente</td>
    <td>Ente incaricato della gestione del parco.</td>
    <td></td>
    <td>Area Protetta</td>
  </tr>
  <tr>
    <td>Notizia</td>
    <td>Notizie riguardanti le aree protette per tenere aggiornati gli utenti.</td>
    <td>Novità</td>
    <td>Area Protetta</td>
  </tr>
  <tr>
    <td>Centro Visita</td>
    <td>Luoghi di informazione e accoglienza per i visitatori.</td>
    <td></td>
    <td>Area Protetta</td>
  </tr>
  <tr>
    <td>Struttura Ricettiva</td>
    <td>Struttura che dà la possibilità di trovare sistemazione con eventuale fruizione di assistenza e/o servizi.</td>
    <td></td>
    <td>Area Protetta</td>
  </tr>
  <tr>
    <td>Visitatore</td>
    <td>Persona che decide o ha l'interesse di visitare l'area protetta.</td>
    <td></td>
    <td>Area Protetta</td>
  </tr>
  <tr>
    <td>Utente</td>
    <td>Visitatore registrato nel sistema che può effettuare delle prenotazioni alle strutture ricettive.</td>
    <td>Profilo</td>
    <td>Struttura Ricettiva, Visitatore</td>
  </tr>
  <tr>
    <td>Itinerari</td>
    <td>Descrive i percorsi disponibili all'interno di un'area protetta che possono essere percorsi da un visitatore.</td>
    <td>Percorsi</td>
    <td>Area Protetta, Visitatore, Visite Guidate, Guida</td>
  </tr>
  <tr>
    <td>Guida</td>
    <td>
      Professionista abilitato incaricato di accompagnare visitatori in visite guidate all'interno 
      dell'area protetta.
    </td>
    <td>Guida Abilitata</td>
    <td>Area Protetta, Visitatore</td>
  </tr>
  <tr>
    <td>Giudizio</td>
    <td>
      Recensione fornita dai visitatori delle aree geografiche nei confronti degli intinerari e delle guide.
      Consiste in una valutazione in stelle e un commento.
    </td>
    <td>Feedback, Valutazione</td>
    <td>Area Protetta, Visitatore, Itinerari</td>
  </tr>
  <tr>
    <td>Visita Guidata</td>
    <td>
      Visita ad uno o più itinerari di un'area protetta da parte dei visitatori organizzata insieme ad una 
      Guida Abilitata.
    </td>
    <td>Tour programmato</td>
    <td>Area Protetta, Visitatore, Itinerari, Guida</td>
  </tr>
  <tr>
    <td>Operatore Turistico</td>
    <td>
      Soggetti terzi che collaborano con l'organizzazione delle visite guidate negli itinerari delle
      aree protette.
    </td>
    <td></td>
    <td>Visitatore, Area Protetta, Visita Guidata, Itinerari, Aree protette</td>
  </tr>
  <tr>
    <td>Licenza</td>
    <td>
      Licenza abilitante che consente ad una Guida la possibilità di agire come Guida turistica e 
      quindi di effettuare delle visite guidate con i visitatori.
    </td>
    <td></td>
    <td>Guida, Visitatore, Visita Guidata</td>
  </tr>
  <tr>
    <td>Gestore del Parco</td>
    <td>
      Utente con permessi speciali per la consultazione degli storici delle visite annuali per una
      determinata area protetta.
    </td>
    <td></td>
    <td>Utenti, Area Protetta, Visita Guidata</td>
  </tr>
</table>