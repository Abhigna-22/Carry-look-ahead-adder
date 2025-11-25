# 8-bit Carry Look-Ahead Adder (CLA) — Verilog Implementation

This repository contains a modular and synthesizable implementation of an **8-bit Carry Look-Ahead Adder (CLA)** written in Verilog.  
The design is structured into clean, reusable submodules:

- `carry_p_g.v` — Generate (G) and Propagate (P) logic  
- `CLA_logic.v` — Carry look-ahead logic block  
- `CLA_mod_FA.v` — Modified full adder using P/G inputs  
- `CLA_adder_8bit.v` — Top-level 8-bit CLA adder  

---

## 📌 Overview

Traditional ripple-carry adders are slow because each bit must wait for the previous carry.  
The **Carry Look-Ahead Adder** improves performance by computing carries *in parallel* using generate/propagate logic.

This design uses:

- **Generate (Gᵢ = Aᵢ·Bᵢ)**
- **Propagate (Pᵢ = Aᵢ ⊕ Bᵢ)**  
- Precomputed carries using look-ahead equations  
- Modular structure suitable for larger CLA construction

The architecture follows the standard CLA equations:

