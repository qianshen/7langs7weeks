
save_matrix := method(name, m, 
    file := File with(name);
    file openForUpdating;
    "begin" println;
    for(i, 0, m x - 1,
        for(j, 0, m y -1,
            m get(i, j) asSimpleString println;
            file write(m get(i, j) asSimpleString);
            file write(",");
        )
        "next line" println;
        file write("\n");
    );
    "close" println;
    file close;
)