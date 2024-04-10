# male(budi).
# woman(siti).

# suka(jolie, Kevin).
# suka(Budi, jolie), suka(jolie, Budi).
# not(suka(jolie, basreng)).

# not/negasi akan bekerja ketika dideklarasikan/dipakai saja ketika not nya tidak ada maka akan true

# count(10) :-
#     write(10), nl.
# count(X) :-
#     X < 10,
#     write(X), nl,
#     Y is X + 1, 
#     count(Y).

# tanya(X, Y) :- X >= Y, write('x lebih besar/= daripada Y')
# tanya(X, Y) :- X < Y, write('x lebih kecil daripada Y')

listbaru([a,b,c]).
listke2([Head|Tail], Head, Tail).

tambahdepan(Element, List, [Element|List]).
tambahbelakang(Element, List, Newlist) :-
    append(List, [Element], Newlist).

# gabung([], angka, angka).
# gabung([H|T], angka, [H|R]) :-
#     gabung(T, angka, R).

panjang([], 0).
panjang([_|T], N) :-
    panjang([_|T], N) :-
    N is N1 + 1.
