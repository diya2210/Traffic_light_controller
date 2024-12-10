# Traffic_light_controller
This project implements a Finite State Machine (FSM) to cycle a lamp through three states: GREEN, YELLOW, and RED, driven by a clock signal. It transitions sequentially (S0 → S1 → S2 → S0), with each state setting the corresponding lamp color. A default case ensures the FSM resets to RED if an unexpected state occurs.
