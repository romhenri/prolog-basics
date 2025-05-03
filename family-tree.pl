pai(joao, maria).
pai(joao, jose).
mae(ana, maria).
mae(ana, jose).

irmao(X, Y) :- pai(P, X), pai(P, Y), mae(M, X), mae(M, Y), X \= Y.
avo(X, Y) :- pai(X, P), pai(P, Y).
