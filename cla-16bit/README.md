# Carry Lookahead Adder (CLA) 16-bit

![Language](https://img.shields.io/badge/Language-VHDL-blue.svg)
![Target](https://img.shields.io/badge/Performance-High_Speed-green.svg)

## Panoramica
Questo repository contiene l'implementazione in VHDL di un **Sommatore a 16 bit con anticipo del riporto (Carry Lookahead)**. A differenza dei comuni sommatori Ripple Carry (RCA), questa architettura riduce drasticamente il tempo di calcolo rendendo la generazione del riporto indipendente dalla propagazione seriale.

## Logica di Progettazione
Il sommatore sfrutta due segnali intermedi per ogni stadio:
* **Generate ($G_i$):** $G_i = A_i \cdot B_i$ (il bit genera un riporto).
* **Propagate ($P_i$):** $P_i = A_i \oplus B_i$ (il bit propaga un riporto entrante).

L'architettura è strutturata gerarchicamente in **4 blocchi da 4 bit**, coordinati da un'unità di gestione del riporto (Carry Lookahead Unit) che calcola i riporti per i blocchi successivi in parallelo, minimizzando il cammino critico.

## Analisi delle Prestazioni
Come evidenziato nella relazione tecnica, l'uso del CLA permette di abbattere il ritardo di propagazione da $O(n)$ a $O(\log n)$, rendendo il componente ideale per unità di calcolo ad alta frequenza.

## Documentazione
Dettagli sulle equazioni booleane e sulla sintesi hardware:
👉 **[Relazione Sommatore 16 bit (PDF)](./docs/relazione_sommatore_16bit.pdf)**
