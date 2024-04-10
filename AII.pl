menyukai(ali, membaca).
menyukai(lina, menulis).
menyukai(ali, menulis).
menyukai(budi, membaca).

teman(X, Y) :- menyukai(X, Z), menyukai(Y, Z), X \= Y.

#  :- jika