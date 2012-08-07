seed := list(1, 1)
fib := method(i, if (i <= 2, seed at(i - 1), fib(i - 1) + fib(i - 2)))

fib2 := method(i, 
i1 := 1; 
i2 := 1; 
sum := 0; 
if (i > 2,  
while(i > 2, sum = i1 + i2; i1 = i2; i2 = sum; i = i - 1), 
sum = seed at(i - 1) 
)
writeln(sum)
)
