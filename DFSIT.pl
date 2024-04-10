% Fakta profesi dan selisih gajinya dalam $
profesi(webdev, uiux, 300).
profesi(uiux, itsupport, 440).
profesi(itsupport, softwaredev, 300). 
profesi(softwaredev, programmer, 300).
profesi(programmer, mobileappdev, 100).

% Aturan untuk mencari path menggunakan DFS
dfs(Jabatan1, Jabatan2, Path, TotalGaji) :-
    dfs_recursive(Jabatan1, Jabatan2, [Jabatan1], Path, 0, TotalGaji).

% Helper recursive DFS
dfs_recursive(Jabatan2, Jabatan2, _, [], Selisih, Selisih).
dfs_recursive(Jabatan1, Jabatan2, Visited, [Next|Path], GajiSaatIni, TotalGaji) :-
    profesi(Jabatan1, Next, SelisihGaji),
    \+ member(Next, Visited), % Pastikan tidak mengunjungi profesi yang sudah dikunjungi
    GajiBaru is GajiSaatIni + SelisihGaji,
    dfs_recursive(Next, Jabatan2, [Next|Visited], Path, GajiBaru, TotalGaji).
