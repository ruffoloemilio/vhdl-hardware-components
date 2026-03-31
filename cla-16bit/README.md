# Sommatore CLA 16-bit (VHDL)

![Language](https://img.shields.io/badge/Language-VHDL-blue.svg)
![EDA Tool](https://img.shields.io/badge/Simulation-ModelSim-orange.svg)

## Panoramica
Questo modulo presenta la progettazione a livello RTL (Register-Transfer Level) e la simulazione di un **Sommatore Carry-Lookahead (CLA) a 16-bit** implementato in VHDL.

L'obiettivo principale del progetto, come documentato nella relazione tecnica, è l'ottimizzazione del ritardo di propagazione del riporto (carry) tipico dei classici sommatori Ripple Carry (RCA). L'architettura anticipa il calcolo dei riporti sfruttando reti logiche combinatorie parallele.

## Architettura Hardware
Il circuito opera su due stringhe in ingresso da **16-bit** e genera una somma a 16-bit più un eventuale `Carry Out`. 
La struttura interna si basa sui segnali fondamentali di:
* **Generate (G):** Indica se un bit specifico genera un riporto indipendente dai bit precedenti.
* **Propagate (P):** Indica se un bit specifico propaga il riporto in ingresso al bit successivo.

L'architettura è stata progettata in modo gerarchico e modulare, assemblando blocchi di ordine inferiore (es. sommatori a 4-bit con logica lookahead locale) per comporre la struttura finale a 16-bit.


## Struttura del Progetto
```text
cla-16bit/
 ├── src/          # File sorgenti VHDL
 ├── tb/           # File di Testbench per la validazione temporale e logica
