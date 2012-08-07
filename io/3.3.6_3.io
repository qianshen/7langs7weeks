addAll := method(v, 
sum := 0;
v foreach(a, 
    a foreach(i, sum = sum + i)
    ); 
sum println
)