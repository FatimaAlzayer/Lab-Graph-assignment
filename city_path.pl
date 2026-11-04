edge(makkah,madinah).
edge(makkah,riyadh).
edge(madinah,makkah).
edge(madinah,taif).
edge(madinah,tabuk).
edge(taif,tabuk).
edge(taif,dammam).
edge(tabuk,taif).
edge(riyadh,dammam).
edge(alqatif,dammam).
edge(alqatif,madinah).
edge(dammam,alqatif).
edge(dammam,riyadh).

travel(From,To,Path):-
 path(From,To,[From],P),
 reverse(P,Path).

path(X,X,P,P).
path(X,Y,V,P):-
    edge(X,Z),
    not(member(Z,V)),
    path(Z,Y,[Z|V],P).
