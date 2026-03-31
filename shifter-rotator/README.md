# Hardware Shifter & Rotator 16-bit (VHDL)

![Language](https://img.shields.io/badge/Language-VHDL-blue.svg)
![Type](https://img.shields.io/badge/Logic-Combinational-yellow.svg)

## Descrizione del Progetto

Il progetto riguarda lo sviluppo di un'unità di scorrimento e rotazione a **16 bit**, progettata per essere integrata in un datapath ad alte prestazioni. Il modulo permette di manipolare la posizione dei bit all'interno di una parola dati, operazione essenziale per il calcolo aritmetico rapido (moltiplicazioni/divisioni per potenze di 2) e per l'allineamento dei dati.

## Specifiche Funzionali

Il circuito accetta un operando da 16 bit e, attraverso un selettore di controllo dedicato, esegue quattro operazioni fondamentali definite nella specifica di progetto:

| Selettore |  Operazione  | Descrizione Tecnica                                                                                         |
| :-------: | :-----------: | :---------------------------------------------------------------------------------------------------------- |
|  `00`  | **SLL** | *Shift Left Logical*: Scorrimento a sinistra con inserimento di '0' nelle posizioni meno significative.   |
|  `01`  | **SRL** | *Shift Right Logical*: Scorrimento a destra con inserimento di '0' nelle posizioni più significative.    |
|  `10`  | **SRA** | *Shift Right Arithmetic*: Scorrimento a destra con **estensione del segno** (mantenimento del MSB). |
|  `11`  | **ROR** | *Rotate Right*: Rotazione a destra (il bit uscente da destra rientra da sinistra).                        |

## Architettura Hardware

L'implementazione sfrutta una struttura a **multiplexer**, garantendo che l'operazione venga completata con un ritardo di propagazione minimo. A differenza degli shifter sequenziali, questa architettura combinatoria non richiede segnali di clock per il completamento dell'operazione, ottimizzando il throughput del sistema.

## Validazione (Testbench)

La correttezza del design è stata verificata tramite simulazioni in ambiente **Xilinx Vivado**, testando i casi limite:

* Inserimento di zeri negli shift logici.
* Verifica della persistenza del bit di segno nello shift aritmetico (fondamentale per le operazioni su numeri negativi in complemento a due).
* Continuità della stringa di bit durante la rotazione.

## Documentazione

Per visualizzare gli schemi logici e i risultati delle simulazioni temporali:
👉 **[Relazione Tecnica - Shifter/Rotator (PDF)](shifter_rotator.pdf)**
