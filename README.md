# VHDL Hardware Components Library

![Language](https://img.shields.io/badge/Language-VHDL-blue.svg)
![Tools](https://img.shields.io/badge/Tools-Vivado_/_ModelSim-orange.svg)

## Panoramica
Questa repository raccoglie i progetti hardware sviluppati durante il corso di studi in Ingegneria Informatica. Ogni modulo è stato progettato a livello RTL, simulato e validato per verificarne la correttezza logica e le prestazioni temporali.

## 📂 Progetti Inclusi

Seleziona una cartella per visualizzare i sorgenti, i testbench e la documentazione tecnica specifica:

### 1. [Mini-ALU 16-bit](./mini-alu/)
Un'unità aritmetico-logica completa con architettura Datapath/Control Unit. Supporta 8 operazioni fondamentali e gestione dei flag di stato (C, V, Z, N).

### 2. [Carry Lookahead Adder (CLA) 16-bit](./cla-16bit/)
Implementazione di un sommatore ad alta velocità. Progettato per abbattere i tempi di propagazione del riporto rispetto a un Ripple Carry Adder (RCA).

### 3. [Shifter & Rotator 16-bit](./shifter-rotator/)
Unità combinatoria basata su rete di multiplexer per operazioni di scorrimento logico, aritmetico e rotazione in un singolo ciclo.
