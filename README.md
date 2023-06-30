# verilog-archive
## How to run?
### Before running
Add this code at the beginning of initial of test bench:
``` verilog
  $dumpfile("wave.vcd");
  $dumpvars(0, your_tb);
```
also add this at the end of initial of test bench if you are using clock:
``` verilog
  $finish;
```
### How to compile?
``` verilog
  iverilog code.v code_tb.v
```
### How to get wave?
``` verilog
  vvp a.out
```
``` verilog
  gtkwave wave.vcd &
```
