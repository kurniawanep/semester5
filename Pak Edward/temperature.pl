inputCelsius :- 
    write('Input the celcius temperature :'),
    read(Celsius),
    Fahrenheit is (9/5 * Celsius) + 32,
    Reamur is 4/5 * Celsius,
    format('Temperature in Fahrenheit : ~w~n', [Fahrenheit]),
    format('Temperature in Reamur : ~w~n', [Reamur]).

inputFahrenheit :-
    write('Input the fahrenheit temperature :'),
    read(Fahrenheit),
    Celsius is 5/9 * (Fahrenheit - 32),
    Reamur is 4/9 * (Fahrenheit - 32),
    format('Temperature in Celsius : ~w~n', [Celsius]),
    format('Temperature in Reamur : ~w~n', [Reamur]).

    inputReamur :-
        write('Input the reamur temperature :'),
        read(Reamur),
        Celsius is 5/4 * Reamur,
        Fahrenheit is (9/4 * Reamur) + 32,
        format('Temperature in Celsius : ~w~n', [Celsius]),
        format('Temperature in Fahrenheit : ~w~n', [Fahrenheit]).