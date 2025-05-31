# SIM Based Mobile Banking System Using Verilog

## Project Overview

This project presents the design and implementation of a **SIM card-based mobile banking system** using Verilog, aiming to provide secure, accessible, and user-friendly banking services via basic mobile phones. Instead of relying on traditional ATMs and physical cards, the system leverages the **SIM Application Toolkit (STK)** and GSM infrastructure, enabling users to perform essential banking transactions such as balance inquiries, fund transfers, and mini-statements—directly from their SIM card and without the need for internet or smartphones. The solution is especially beneficial for regions with limited connectivity, promoting financial inclusion and bridging the digital divide[1].

---

## Table of Contents

- [Introduction](#introduction)
- [Objectives](#objectives)
- [Existing Method and Challenges](#existing-method-and-challenges)
- [Proposed Method](#proposed-method)
- [System Operation](#system-operation)
- [Key Features](#key-features)
- [Technology Stack](#technology-stack)
- [Advantages](#advantages)
- [Applications](#applications)
- [Future Scope](#future-scope)
- [Contributors](#contributors)
- [Acknowledgements](#acknowledgements)
- [References](#references)

---

## Introduction

The rapid growth of electronic transactions has increased the need for fast, secure, and accessible banking solutions. Traditional ATMs, while popular, have limitations such as security risks (card theft, skimming, cloning), inconvenience of carrying physical cards, and limited accessibility—particularly for visually impaired users and those in remote areas. This project addresses these issues by introducing a cardless, SIM-based banking system[1].

---

## Objectives

- Eliminate the need for physical ATM cards by using SIM-based authentication.
- Provide real-time, secure access to banking services via basic mobile phones.
- Enhance security through multi-level authentication and encryption.
- Increase banking accessibility in rural and underserved communities[1].

---

## Existing Method and Challenges

**Traditional ATM systems** require a physical card and PIN for transactions. While widely used, they face several challenges:
- **Security Risks:** Card theft, skimming, cloning, and PIN theft.
- **Inconvenience:** Need to carry and maintain physical cards.
- **Limited Accessibility:** Difficult for visually impaired users and people in remote areas.
- **Limited Transaction Options:** Some ATMs only support basic functions.
- **Downtime:** ATMs may be unavailable due to maintenance or technical issues[1].

---

## Proposed Method

The proposed system replaces physical ATM cards with **SIM card-based authentication**. Users authenticate by sending an SMS from their registered mobile number to the ATM's GSM module, then entering their PIN. The system uses GSM technology and Verilog-based FPGA control logic, with optional voice guidance for inclusivity. Key hardware includes a GSM module, FPGA, LCD display, and keypad[1].

---

## System Operation

1. **User sends SMS** from their registered mobile to the ATM's GSM module.
2. **System verifies SIM number** against a stored database.
3. **User enters PIN** on the keypad.
4. **Upon successful authentication**, the user can perform transactions such as balance inquiry, fund transfer, or view mini-statements.
5. **Optional voice guidance** can assist visually impaired users[1].

---

## Key Features

- **Cardless Authentication:** Secure access using SIM number and PIN.
- **No Internet Required:** Works on basic GSM phones.
- **Multi-level Security:** Authentication and encryption mechanisms.
- **Minimal Hardware:** Cost-effective and scalable.
- **Inclusive Design:** Optional voice guidance for accessibility[1].

---

## Technology Stack

- **Hardware:** GSM module, FPGA (Field-Programmable Gate Array), LCD display, keypad, optional voice module.
- **Software:** Verilog (for FPGA logic and control), SIM Application Toolkit (STK)[1].

---

**Circuit diagram of SIM BASED MOBILE BANKING SYSTEM**

![image](https://github.com/user-attachments/assets/6d830221-516a-4932-8e48-64dfdc9888cb)

**Resultant Waveforms**

![image](https://github.com/user-attachments/assets/cd261933-9722-4693-8b3b-e4fa431a1ea9)



## Advantages

- Enhanced security and reduced risk of card-related fraud.
- Greater convenience and accessibility for users in rural or remote areas.
- User-friendly for visually impaired individuals.
- Cost-effective and easy to deploy using existing GSM infrastructure[1].

---

## Applications

- Rural and remote banking services.
- Financial inclusion for underserved populations.
- Secure, cardless ATM alternatives.
- Emergency banking access where internet or smartphones are unavailable[1].

---

## Future Scope

- Integration with biometric authentication for added security.
- Expansion to support more complex banking functions.
- Wider deployment in government and private sector banking initiatives[1].

---

## Contributors

- **B. Hemanjali** (R200209)
- **J. Sravya** (R200366)
- **K. Harshitha** (R200376)

**Guide:** Mrs. M. Anitha, Assistant Professor, ECE Dept, RGUKT RK Valley

---

## Acknowledgements

We thank our guide Mrs. M. Anitha for her guidance and encouragement, Mr. Y. Arun Kumar Reddy (Head of Department), the management of RGUKT, and our families and friends for their support throughout this project[1].

---

## References

For more details, see the full project report:  
**Sim-Based-Mobile-Banking-System-using-Verilog.pdf**

---

*Department of Electronics and Communication Engineering*  
*Rajiv Gandhi University of Knowledge and Technologies, RK Valley, Kadapa (2024-2025)*

---
