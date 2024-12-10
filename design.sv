module cyclic_lamp (clock, light);
  input clock;                     // Input clock signal to drive state transitions
  output reg [0:2] light;          // Output signal representing the lamp state: RED, GREEN, or YELLOW

  // State parameters
  parameter S0 = 0, S1 = 1, S2 = 2; 
  // Light color encoding
  parameter RED = 3'b100, GREEN = 3'b010, YELLOW = 3'b001;

  reg [0:1] state;                 // Current state of the FSM (2 bits to represent 3 states)

  // State transition and output logic
  always @(posedge clock)          // Triggered on the rising edge of the clock signal
    case(state)
      S0: begin                    // State S0: Lamp shows GREEN
        light <= GREEN;            // Set light to GREEN
        state <= S1;               // Transition to state S1
      end
      S1: begin                    // State S1: Lamp shows YELLOW
        light <= YELLOW;           // Set light to YELLOW
        state <= S2;               // Transition to state S2
      end
      S2: begin                    // State S2: Lamp shows RED
        light <= RED;              // Set light to RED
        state <= S0;               // Transition back to state S0
      end
      default: begin               // Default case to handle unexpected situations
        light <= RED;              // Default light to RED
        state <= S0;               // Reset state to S0
      end
    endcase
endmodule
