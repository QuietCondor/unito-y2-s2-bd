# 1. Progettazione concettuale

## 1.1 Requisiti iniziali
Si vuol realizzare un sistema che raccoglie e organizza tutte le informazioni relative alle aree 
protette italiane, offrendo una panoramica completa e dettagliata, e fornendo strumenti utili 
per la pianificazione di visite, la gestione delle aree stesse e dei servizi forniti. 

Per ogni parco, il sistema memorizza dettagli come il codice identificativo, il nome, la regione 
in cui si trova, la tipologia (ad esempio, parco nazionale o riserva naturale), l'ente che la 
gestisce, il provvedimento che ne ha sancito l'istituzione, le superfici terrestre e marina, i 
chilometri di costa e altre informazioni utili. <br/>
Le aree protette sono classificate in base al tipo, seguendo la classificazione ufficiale 
(https://www.mase.gov.it/pagina/classificazione-delle-aree-naturali-protette). <br/>
Inoltre, sul sito sono rappresentate come suddivise per regione. Alcuni parchi partecipano a 
programmi di certificazione come la Carta Europea del Turismo Sostenibile (CETS), che 
promuove pratiche turistiche rispettose dell'ambiente e del patrimonio naturale. 

Ogni sezione del sito dedicata ad una specifica area protetta ha una pagina dedicata alle 
ultime notizie, complete di data, foto e testo, per tenere aggiornati gli utenti su eventi e 
novità.  

Per chi desidera visitare l'area, il sistema deve fornire informazioni sui centri visita sufficienti 
per facilitare l’organizzazione di visite e percorsi. Questo è un esempio.
![Test](./img/esame_progettazione_requisiti.png)

Per chi cerca un posto dove alloggiare, il sistema elenca le strutture ricettive nelle vicinanze, 
fornendo dettagli su nome, indirizzo, contatti, servizi offerti, trattamenti disponibili ed 
eventuali impegni ecologici. Alcune di queste strutture sono attrezzate per ospitare scuole o 
gruppi e dispongono di parcheggi adeguati. Inoltre, alcune aderiscono alla Carta Europea 
del Turismo Sostenibile, garantendo un'esperienza rispettosa dell'ambiente. 

Per gli appassionati di escursioni, il sistema descrive vari tragitti con informazioni su 
segnaletica, punto di partenza, modalità di percorrenza (a piedi, in bici, a cavallo), livello di 
difficoltà, tempo stimato di percorrenza e una lista di guide autorizzate con relative 
valutazioni. 

I visitatori possono registrarsi sul sito creando un profilo con username e password, che 
permette loro di inviare richieste di prenotazione alle strutture ricettive, specificando le date 
di soggiorno e il numero di ospiti. Le strutture ricevono queste richieste e, dopo aver 
verificato la disponibilità, possono accettarle o meno. 

Il sistema tiene traccia dei dati relativi alle presenze di ogni area protetta, registrando orari di 
entrata e uscita, tipologia di utente (senior, bambini, gruppi scolastici, altri gruppi), itinerari 
percorsi e feedback sotto forma di valutazioni a stelle per ogni percorso. Il sistema consente 
ad ogni visitatore di esprimere un giudizio (in stelle), che aggiorna la valutazione degli 
itinerari, e di lasciare un commento. Inoltre, conserva i commenti postati sul sito del parco e 
le valutazioni date alle guide.

Il sistema permette di prenotare visite guidate in orari specifici con delle guide abilitate i cui 
estremi (licenze, itinerari disponibili per ciascuna guida, valutazioni da parte degli utenti 
passati, e calendario con le loro disponibilità) sono resi disponibili agli operatori turistici ed ai 
visitatori. Ogni itinerario può essere associato a una o più guide abilitate, e il sistema 
mantiene un registro aggiornato delle guide disponibili in ogni momento. Nella pagina degli 
itinerari, viene mostrato il numero di guide abilitate e il numero di quelle disponibili. 

Per quanto riguarda le visite guidate, il sistema organizza un numero definito di tour 
programmati per ogni itinerario, ciascuno con un numero massimo di partecipanti, uno stato 
attuale e una guida assegnata tra quelle abilitate. I gestori del parco possono consultare uno 
storico delle visite effettuate in ogni anno, utile per analisi di mercato e miglioramento dei 
servizi offerti. 

## 1.2 Glossario dei termini

<table>
  <tr>
    <th>Termine</th>
    <th>Descrizione</th>
    <th>Sinonimi</th>
    <th>Collegamenti</th>
  </tr>
  <tr>
    <td>Sito</td>
    <td>
      Sistema informatico che consente l'accesso, consultazione, gestione e il monitoraggio
      delle aree protette italiane.
    </td>
    <td>Sistema</td>
    <td>Area Protetta</td>
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
    <td>Valutazione</td>
    <td>
      Recensione fornita dai visitatori delle aree geografiche nei confronti degli intinerari e delle guide.
      Consiste in una scelta del numero di stelle rappresentanti la positività dell'esperienza e un 
      commento.
    </td>
    <td>Feedback, Giudizio</td>
    <td>Area Protetta, Visitatore, Itinerari</td>
  </tr>
  <tr>
    <td>Visita Guidata</td>
    <td>
      Visita ad uno o più itinerari di un'area protetta da parte dei visitatori organizzata insieme ad una 
      Guida Abilitata.
    </td>
    <td>Tour programmato, Visita</td>
    <td>Area Protetta, Visitatore, Itinerari, Guida</td>
  </tr>
  <tr>
    <td>Operatore Turistico</td>
    <td>
      Soggetti terzi che collaborano con l'organizzazione delle visite guidate negli itinerari delle
      aree protette. Hanno la possibilità di vedere gli estremi delle Guide.
    </td>
    <td></td>
    <td>Visitatore, Area Protetta, Visita Guidata, Itinerari, Aree protette, Guide</td>
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
  <tr>
    <td>Dati di presenza</td>
    <td>
      Definisce dei dati estrapolabili dal sistema che consentono di analizzare le presenze di visitatori all'interno delle
      aree protette.
    </td>
    <td></td>
    <td>Visitatore, Area Protetta, Visita Guidata</td>
  </tr>
</table>


## 1.3 Requisiti rivisti e strutturati in gruppi di frasi omogenee.

### 1.3.1 Informazioni di carattere generale
Si vuole realizzare una base di dati per un sistema che raccoglie e organizza tutte le informazioni relative alle aree protette italiane.

La base di dati deve permettere al sistema di visualizzare le aree protette raggruppate per regione e le informazioni di dettaglio delle 
aree protette.

Le informazioni di dettaglio delle aree protette devono contenere le ultime notizie, informazioni sui centri visita itinerari, storici
delle visite guidate annuali e informazioni sulle strutture ricettive.

Le informazioni di dettaglio degli itinerari devono contenere i dati di presenza delle aree protette [[1]](#1312-dettagli-sui-dati-di-presenza-nelle-aree-protette) e i dati delle guide come dati di Guide abilitate e valutazioni dei visitatori.

Il sistema deve inoltre fornire gli strumenti per gestire visite guidate con guide abilitate, organizzare visite guidate per ogni itinerario
gestire le aree protette, richiedere prenotazioni alle strutture ricettive e gestire utenti registrati al sistema stesso.

Per quanto riguarda la gestione di visite guidate, deve essere possibile gestirne la pianificazione e le valutazioni a itinerari e guide.

#### 1.3.1.2 Dettagli sui Dati di presenza nelle Aree Protette:
Nei Dati di Presenza delle Aree Protette rappresentiamo l'orario di entrata, l'orario di uscita, la tipologia di Visitatore e gli
itinerari percorsi.

Per tipologia di visitatore rappresentiamo come valori: Senior, Bambini, Gruppi scolastici e Altri gruppi.

### 1.3.2 Informazioni relative alle Aree Protette
Per Area Protetta rappresentiamo: Codice Identificativo, Nome,  Regione, Tipologia, Ente incaricato della gestione, Provvedimento che ne ha 
portato l'istituzione, Superfice terrestre, Superfice marina, Km di costa, Eventuali altre informazioni utili, Programmi di certificazione, 
Itinerari al suo interno.

A supporto e integrazione delle definizioni e valori dei singoli campi, si utilizzerà il:
- [sito ufficiale del ministero dell'ambiente e della sicurezza energetica](https://www.mase.gov.it/pagina/classificazione-delle-aree-naturali-protette)
- [elenco ufficiale presente nel sito ufficiale del ministero dell'ambiente e della sicurezza energetica](https://www.mase.gov.it/sites/default/files/archivio/normativa/dm_27_04_2010.pdf)
presenti come fonte nei requisiti iniziali o derivati diretti da esse.

Per Codice Identificativo, rappresentiamo i valori in formato alfanumerico.

Per Tipologia, rappresentiamo i valori come: Parchi nazionali, Parchi naturali regionali e interregionali, Riserve naturali, Zone umide di interesse internazionale, Altre aree naturali protette e Aree di reperimento terrestri e marine.


### 1.3.3 Informazioni relative alle Notizie
Le Notizie contengono informazioni relative ad aggiornamenti o eventi riguardo le Aree Protette.

Per Notizia rappresentiamo: Data, Foto e Testo.

Per quanto concerne la foto, si suppone che il sistema abbia integrazioni esterne per la storicizzazione
delle immagini (es: Servizi in cloud come [Il blob storage di Azure](https://azure.microsoft.com/en-us/products/storage/blobs))
che consentono quindi al sistema di rappresentare la foto come semplice URL di rimando alla risorsa
presenti su tali sistemi esterni.

### 1.3.4 Informazioni relative ai Centri Visita
Per Centro Visita rappresentiamo: Nome, Titolo sommario, Indirizzo, Descrizione, Logo, Orari e Modalità di fruizione.

Per Indirizzo rappresentiamo: Via, Cap, Comune, Frazione, Regione.

Per Orari rappresentiamo: Mesi di apertura e i Giorni settimanali di apertura.
Per Ogni giorno di apertura rappresentiamo il range orario di apertura al mattino e il range orario di apertura al pomeriggio.

In cui le informazioni di dettaglio di indirizzi e orari, sono inferite dall'immagine di esempio fornita
nei [Requisiti iniziali](#11-requisiti-iniziali).

### 1.3.5 Informazioni relative alle Strutture Ricettive
Per Struttura Ricettiva rappresentiamo: Nome, Indirizzo, Contatti, Servizi offerti, Trattamenti disponibili, Impegni ecologici, Possibilità di ospitare scuole o gruppi e Disponibilità di parcheggi adeguati.

In cui supponiamo che la struttura degli indirizzi sia la stessa vista e definita nelle
[Informazioni relative ai Centri Visita](#134-informazioni-relative-ai-centri-visita).

### 1.3.6 Informazioni relative agli Utenti
Per utente rappresentiamo: Username, Password [[1]](#1361-dettagli-sulla-password) e Ruolo [[2]](#1362-dettagli-sui-ruoli-degli-utenti). 

Gli Utenti sono in grado di effettuare recensioni di Itinerari e Guide ed effettuare
delle prenotazioni nelle strutture ricettive [[3]](#1363-dettagli-sulle-prenotazioni-di-strutture-ricettive).

#### 1.3.6.1 Dettagli sulla Password
Per Password rappresentiamo un hash o un'informazione crittografata in quanto assumiamo che per motivi di sicurezza non venga salvata la password in chiaro.

#### 1.3.6.2 Dettagli sui Ruoli degli Utenti
Per Ruolo rappresentiamo come valori possibili: Gestore del Parco, Operatore Turistico e Visitatore Registrato

In quanto si inferisce dal testo che i diversi ruoli hanno significati distinti:
- Gestore del parco: Consente la consultazione degli storici sulle visite delle aree protette.
- Operatore Turistico: Consente la visualizzazione dei dati delle guide.
- Visitatore Registrato: Definisce l'utente base rappresentante il visitatore che si è registrato
                         sulla piattaforma.

#### 1.3.6.3 Dettagli sulle Prenotazioni di Strutture Ricettive
Per la richiesta di Prenotazione di una Struttura ricettiva rappresentiamo: Data di inizio soggiorno, Data di fine soggiorno, Numero di 
ospiti e Stato di accettazione da parte della Struttura Ricettiva.


### 1.3.7 Informazioni relative agli Itinerari
Per Itinerari rappresentiamo: Guide abilitate e Valutazioni dei visitatori composto da un numero di stelle ed un commento.

Ogni Itinerario ha un numero di guide abilitate e guide disponibili che sono rappresentate dal sistema.
Sia i Visitatori che gli Utenti possono lasciare Valutazioni.
Ogni Itinerario dispone di più Visite guidate.

### 1.3.8 Informazioni relative alle Guide
Per Guide rappresentiamo: Licenze, Itinerari disponibili, Valutazioni degli Utenti, Calendario con disponibilità.

Assumiamo che la struttura di valutazione per le Guide sia uniforme rispetto alla valutazione data
agli Itinerari e che quindi sia composta da un Numero di Stelle ed un Commento.

Le guide devono avere una licenza per poter tenere delle Visite Guidate a dei Visitatori. 

### 1.3.9 Informazioni sulle Visite Guidate
Le visite guidate sono prenotabili dagli Utenti all'interno del sistema e possono essere molteplici per uno specifico itinerario.
Le visite guidate sono dirette e assegnate ad sola guida abilitata.

Per Visite Guidate rappresentiamo: Numero massimo di partecipanti, Stato attuale e Guida assegnata.