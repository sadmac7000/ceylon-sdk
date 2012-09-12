by "Stéphane Épardaud"
doc "A JSON Printer that prints to a `String`"
shared class StringPrinter(Boolean pretty = false) extends Printer(pretty){
    
    value builder = StringBuilder();

    doc "Appends the given value to our `String` representation"
    shared actual void print(String string){
        builder.append(string);
    }

    doc "Returns the printed JSON"
    shared actual default String string { return builder.string; }
}