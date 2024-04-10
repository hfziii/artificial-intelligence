% Fakta struktur organisasi perusahaan
atasan(ceo, cto).
atasan(ceo, coo).

atasan(cto, cio).
atasan(cto, cfo).

atasan(coo, hr_manager).
atasan(coo, marketing_manager).


% Aturan untuk mencari jalur hierarki menggunakan DFS
jalur_hierarki(Pegawai1, Pegawai2, Jalur) :-
    jalur_hierarki_recursive(Pegawai1, Pegawai2, [Pegawai1], Jalur).

% Helper recursive DFStolo
jalur_hierarki_recursive(Pegawai, Pegawai, _, []).
jalur_hierarki_recursive(Pegawai1, Pegawai2, Visited, [Atasan|Jalur]) :-
    atasan(Pegawai1, Atasan),
    \+ member(Atasan, Visited), % Pastikan tidak mengunjungi pegawai yang sudah dikunjungi
    jalur_hierarki_recursive(Atasan, Pegawai2, [Atasan|Visited], Jalur).
jalur_hierarki_recursive(_, _, _, []) :- !. % Tidak ada jalur yang ditemukan
