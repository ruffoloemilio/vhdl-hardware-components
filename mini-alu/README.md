# Custom Mini-ALU (VHDL)

![Language](https://img.shields.io/badge/Language-VHDL-blue.svg)
![EDA Tool](https://img.shields.io/badge/Simulation-ModelSim-orange.svg)

## Panoramica
Questo modulo contiene la progettazione, l'implementazione a livello RTL (Register-Transfer Level) e la simulazione di una Mini-ALU (Arithmetic Logic Unit) scritta interamente in VHDL.

Il progetto si concentra sul design di circuiti logici combinatori, sull'ottimizzazione del datapath e sulla gestione precisa dei flag di stato in uscita (es. Carry, Zero, Overflow) in base alle operazioni eseguite.

## Architettura e Set di Istruzioni
La ALU è progettata per elaborare operandi a **8-bit**. La selezione dell'operazione da eseguire sul Datapath è gestita tramite il segnale di controllo `Ctrl`, a cui corrispondono le seguenti elaborazioni:

* **Operazioni Aritmetiche:** Addizione, Sottrazione
* **Operazioni Logiche:** AND, OR, XOR, NOT


## Struttura del Progetto
```text
mini-alu/
 ├── src/          #File sorgenti VHDL
 ├── tb/           #Testbench per la validazione
