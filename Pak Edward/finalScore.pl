% determineFinalScore(Presence, Tasks, MiddleTest, FinalTest, Grade, Predicate, Status) :-
%     FinalScore is ((Presence * 10) + (Tasks * 20) + (MiddleTest * 30) + (FinalTest * 40)) / 100,
%     (
%         FinalScore >= 80 -> Grade = 'A', Predicate = 'Sangat Baik', Status = 'Lulus';
%         FinalScore >= 70 -> Grade = 'B', Predicate = 'Baik', Status = 'Lulus';
%         FinalScore >= 60 -> Grade = 'C', Predicate = 'Kurang', Status = 'Diperbolehkan Remidi';
%         FinalScore >= 50 -> Grade = 'D', Predicate = 'Tidak Baik', Status = 'Tidak Lulus';
%         Grade = 'E', Predicate = 'Sangat Tidak Baik', Status = 'Tidak Lulus'
%     ).

determineFinalScore(Grade, Predicate, Status) :-
    write('Masukkan nilai kehadiran : '),
    read(Presence),
    write('Masukkan nilai tugas :  '),
    read(Tasks),
    write('Masukkan nilai UTS : '),
    read(MiddleTest),
    write('Masukkan nilai UAS : '),
    read(FinalTest),
    
    FinalScore is ((Presence * 10) + (Tasks * 20) + (MiddleTest * 30) + (FinalTest * 40)) / 100,
    format('~nNilai Akhir : ~w~n', [FinalScore]),
    (
        FinalScore >= 80 -> (Grade = 'A', Predicate = 'Sangat Baik', Status = 'Lulus');
        FinalScore >= 70 -> (Grade = 'B', Predicate = 'Baik', Status = 'Lulus');
        FinalScore >= 60 -> (Grade = 'C', Predicate = 'Kurang', Status = 'Diperbolehkan Remidi');
        FinalScore >= 50 -> (Grade = 'D', Predicate = 'Tidak Baik', Status = 'Tidak Lulus');
        (Grade = 'E', Predicate = 'Sangat Tidak Baik', Status = 'Tidak Lulus')
    ).
