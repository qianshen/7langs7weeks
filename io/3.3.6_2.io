Number oldDiv := (Number getSlot("/"))

Number / := method(i, if (i == 0, 0, self oldDiv(i)))