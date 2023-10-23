menghitung_luas :-
    write('==== Menghitung Luas Persegi Panjang ====\n\n'),
    write('Masukkan panjang: '),
    read(Panjang),
    write('Masukkan lebar: '),
    read(Lebar),
    Luas is Panjang * Lebar,
    format('Luasnya adalah : ~w~n', [Luas]).