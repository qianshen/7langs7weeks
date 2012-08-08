XmlBuilder := Object clone

XmlBuilder forward := method(
    write("<", call message name);
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if (content type == "Map",
            content foreach(key, value,
                write(" ", key, "=", "\"", value, "\"")
            );
        )
        elseif (content type == "Sequence", writeln(">"); writeln(content))
    );
    writeln("</", call message name, ">")
)

curlyBrackets := method(
    r := Map clone;
    call message arguments foreach(
        arg,
        r doMessage(arg)
    );
    r
)

OperatorTable addAssignOperator(":", "atPut")

XmlBuilder book({"title": "shen"}, "7lang7weeks",
    chapter("Forword"),
    chapter("Chapter One")
)