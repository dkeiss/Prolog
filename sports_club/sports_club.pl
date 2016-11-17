/******************************/
/*********** facts ************/
/******************************/

member(hans,maulwurf,m,1968,curly).
member(gutfried,wurst,m,1972,curly).
member(heide,witzka,w,1978,curly).
member(elli,fant,w,1998,curly).
member(adam,sapfel,m,1995,table_tennis).
member(hella,wahnsinn,w,1983,table_tennis).
member(ali,mente,m,1988,table_tennis).
fee(curly,31.50).
fee(table_tennis,42.00).

/******************************/
/*********** rules ***********/
/******************************/

age(Firstname,Lastname) :-
member(Firstname,Lastname,_,Year_of_birth,_),
get_time(Stamp),
stamp_date_time(Stamp, DateTime, local),
date_time_value(year, DateTime, Current_Year),
Erg is Current_Year-Year_of_birth,
write(Erg).

allMembersWithAge :-
member(Firstname,Lastname,Gender,Year_of_birth,Sport),
write(Firstname),
write(" "),
write(Lastname),
write(" "),
write(Sport),
write(" age: "),
age(Firstname,Lastname),
nl,
fail.

matchesIncludingReturn(Sport,Firstname1,Lastname1,Firstname2,Lastname2) :-
member(Firstname1,Lastname1,_,_,Sport),
member(Firstname2,Lastname2,_,_,Sport),
not((Firstname1 = Firstname2, Lastname1 = Lastname2)).
