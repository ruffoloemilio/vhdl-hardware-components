# Hardware Shifter e Rotator 16-bit (VHDL)

![Language](https://img.shields.io/badge/Language-VHDL-blue.svg)
![EDA Tool](https://img.shields.io/badge/Simulation-Vivado-orange.svg)

## Panoramica
Questo modulo documenta la progettazione, l'implementazione a livello RTL e la simulazione di un circuito combinatorio dedicato alle operazioni di scorrimento (Shift) e rotazione (Rotate) su stringhe a **16-bit**, sviluppato interamente in VHDL.

Il progetto, parte dell'architettura di una ALU a 16-bit più ampia, utilizza una rete basata su multiplexer per eseguire le traslazioni dei bit in base ai segnali di selezione.

## Architettura e Set di Istruzioni
Il circuito elabora un operando in ingresso a 16-bit. L'operazione desiderata è selezionata tramite un segnale di controllo (selettore) a 2-bit, che instrada i dati per eseguire le seguenti funzioni:

* `00` : **SLL** (Shift Logico a Sinistra) - con inserimento di zeri (LSB).
* `01` : **SRL** (Shift Logico a Destra) - con inserimento di zeri (MSB).
* `10` : **SRA** (Shift Aritmetico a Destra) - con replicazione del bit di segno.
* `11` : **ROR** (Rotazione a Destra) - con reinserimento del LSB nel MSB.


## Struttura del Progetto
```text
shifter-rotator/
 ├── src/          # File sorgenti VHDL
 ├── tb/           # Testbench per la validazione delle operazioni
