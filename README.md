# verilog-archive
## How to run using Iverilog?
### First Step
Add this code at the beginning of test bench initial block:
``` verilog
  $dumpfile("wave.vcd");
  $dumpvars(0, your_tb);
```
also this if you have clock:
``` verilog
  $finish;
```
### How to compile?
``` verilog
  iverilog code.v code_tb.v
```
### How to get the wave?
``` verilog
  vvp a.out
```
``` verilog
  gtkwave wave.vcd &
```
