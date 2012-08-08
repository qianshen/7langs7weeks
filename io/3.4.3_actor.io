slow := Object clone

fast := Object clone

slow start := method(wait(2); writeln("slow"))

fast start := method(wait(1); writeln("fast"))

slow start; fast start;

slow @@start; fast @@start; wait(4)