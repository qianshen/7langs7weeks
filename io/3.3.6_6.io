matrix := List clone

matrix dim := method(x, y, 
for(i, 1, y, 
    l := list();
    for (j, 1, x, l append(0));
    self append(l) 
))

matrix set := method(x, y, z,  
    l := self at(y);
    l atPut(x, z)
)

matrix get := method(x, y, 
    l := self at(y);
    l at(x)
)

matrix x := method(self at(0) size)

matrix y := method(self size)

matrix reverse := method( 
    m := matrix clone; 
    m dim (self y, self x); 
    for(i, 0, self x - 1, 
        for(j, 0, self y - 1, 
            v := self get(i, j); 
            m set(j, i, v)
        )
    );
    m
) 

