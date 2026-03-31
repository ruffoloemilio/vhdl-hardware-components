# Mini-ALU 16-bit (VHDL)

![Language](https://img.shields.io/badge/Language-VHDL-blue.svg)
![Architecture](https://img.shields.io/badge/Architecture-16--bit-red.svg)

## Descrizione del Progetto
Il progetto riguarda la progettazione e implementazione di una **Mini-ALU a 16 bit** ottimizzata per l'esecuzione di operazioni aritmetico-logiche fondamentali. L'architettura è suddivisa in due blocchi principali:
* **Control Unit:** Gestisce la logica di controllo e la decodifica dell'opcode.
* **Datapath:** Esegue il calcolo effettivo sui dati in ingresso (A e B).

## Specifiche Tecniche e Set di Istruzioni
L'unità elabora operandi a 16 bit e genera un risultato a 16 bit accompagnato dai flag di stato (**C, V, Z, N**). La selezione dell'operazione avviene tramite un segnale di controllo a 3 bit (Opcode) secondo la seguente logica:

| Opcode | Operazione | Descrizione |
|:---:|:---:|:---|
| `000` | **ADD** | Addizione aritmetica (A + B) |
| `001` | **SUB** | Sottrazione aritmetica (A - B) |
| `010` | **AND** | And logico bit-a-bit |
| `011` | **OR** | Or logico bit-a-bit |
| `100` | **XOR** | Xor logico bit-a-bit |
| `101` | **NOT** | Complemento logico di A |
| `110` | **PASS A**| Trasferimento del dato A in uscita |
| `111` | **PASS B**| Trasferimento del dato B in uscita |

## Implementazione e Simulazione
Il design è stato validato tramite simulazioni funzionali per verificare la corretta gestione del **riporto (Carry)** e dell'**overflow** in aritmetica a complemento a due. La gerarchia dei file garantisce una sintesi efficiente dei componenti logici (Mux, Adder, Unità Logica).

## Documentazione
Per il dettaglio degli schemi a blocchi, delle tabelle di verità e dei diagrammi temporali:
👉 **[Relazione Tecnica - Mini ALU (PDF)](./docs/mini-alu.pdf)**
