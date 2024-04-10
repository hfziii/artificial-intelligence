% Fakta sambungan antar kota dan jaraknya
sambungan(jakarta, bandung, 150).
sambungan(bandung, surabaya, 350).
sambungan(bandung, yogyakarta, 500). % Menambahkan koneksi dari Bandung ke Yogyakarta
sambungan(surabaya, makassar, 400).
sambungan(makassar, papua, 1000).

% Aturan untuk mencari path menggunakan DFS
dfs(Asal, Tujuan, Path, TotalJarak) :-
    dfs_recursive(Asal, Tujuan, [Asal], Path, 0, TotalJarak).

% Helper recursive DFS
dfs_recursive(Tujuan, Tujuan, _, [], Jarak, Jarak).
dfs_recursive(Asal, Tujuan, Visited, [Next|Path], JarakSaatIni, TotalJarak) :-
    sambungan(Asal, Next, JarakLangkah),
    \+ member(Next, Visited), % Pastikan tidak mengunjungi kota yang sudah dikunjungi
    JarakBaru is JarakSaatIni + JarakLangkah,
    dfs_recursive(Next, Tujuan, [Next|Visited], Path, JarakBaru, TotalJarak).
