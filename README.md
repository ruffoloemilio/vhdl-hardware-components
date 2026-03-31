# Custom Mini-ALU (VHDL)

![Language](https://img.shields.io/badge/Language-VHDL-blue.svg)
![EDA Tool](https://img.shields.io/badge/Simulation-ModelSim-orange.svg)

## Panoramica
Questo modulo contiene la progettazione, l'implementazione a livello RTL (Register-Transfer Level) e la simulazione di una Mini-ALU (Arithmetic Logic Unit) parametrica scritta interamente in VHDL.

Il progetto si concentra sul design di circuiti logici combinatori, sull'ottimizzazione del datapath e sulla gestione precisa dei flag di stato (Zero, Overflow, Carry, Negative) in base alle operazioni eseguite.

## Architettura e Set di Istruzioni
La ALU è progettata per elaborare operandi a N-bit. La selezione dell'operazione è gestita tramite un segnale di controllo (Opcode) a cui corrispondono le seguenti elaborazioni:

* **Aritmetiche:** Addizione, Sottrazione
* **Logiche:** AND, OR, XOR, NOT
