List myAverage := method(sum := 0; self foreach(i,sum = sum + i); sum / (self size))

list(1, 2, 6) myAverage