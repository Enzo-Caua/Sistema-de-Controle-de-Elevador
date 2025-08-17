# Sistema de Controle de Elevador

## 📌 Descrição
Este produto foi desenvolvido como avaliação do problema 3 da disciplina MI Projeto de Circuitos Digitais - TEC498.

O projeto consiste no desenvolvimento de um protótipo do sistema de controle de um elevador de três andares utilizando **circuitos digitais** descritos em **Verilog Estrutural**,  modelado a partir de **Máquinas de Estados Finitos (MEF)**, com implementação em um **CPLD (MAX II - EPM240T100C5N)**, utilizando o kit de desenvolvimento LEDS-CPLD ([LEDS/UEFS](https://sites.google.com/uefs.br/ltec3-leds/in%C3%ADcio?authuser=0))  .  

---

## ⚙️ Funcionalidades
- **Chamadas de Elevador**: cada andar possui chaves DIP que permitem solicitar o elevador.
- **Controle de Pessoas**: botões de incremento/decremento controlam o número de passageiros, exibido em display de 7 segmentos.
- **Acionamento do Motor**: garante movimentação apenas com portas fechadas.
- **Indicação do Andar Atual**: display de 7 segmentos mostra em tempo real o andar.
- **Indicação do Estado da Porta**: LED RGB exibe se a porta está aberta, fechada, em movimento ou em alerta.
- **Alarme de Capacidade Máxima**: trava o sistema em caso de excesso de passageiros.
- **Direção de Movimento**: matriz de LEDs indica subida ou descida.

---

## 👨‍💻 Autores
- Enzo Cauã da S. Barbosa  
- Jamile Letícia C. da Silva  

Tutoria: João Bosco Gertrudes e Wild Freitas da Silva Santos  
