2DArray := List clone

2DArray dim := method(x, y, 
for(i, 1, y, 
    l := list();
    for (j, 1, x, l append(0));
    self append(l) 
))

2DArray set := method(x, y, z,  
    l := self at(y);
    l atPut(x, z)
)

2DArray get := method(x, y, 
    l := self at(y);
    l at(x)
)