% Menu %
mainDish('Pizza Peperoni').
mainDish('Pizza Tonno').
mainDish('Spaghetti').
mainDish('Lasagne').
mainDish('Trout').
mainDish('Caviar').
mainDish('Schnitzel').
mainDish('Rumpsteak').
mainDish('Salad').

% Menu Categorys %
pizza('Pizza Peperoni').
pizza('Pizza Tonno').
meat('Schnitzel').
meat('Rumpsteak').
fish('Trout').
fish('Caviar').
noodles('Spaghetti').
noodles('Lasagne').
salad('Salad').

% Drinks card %
drink('Beer').
drink('Wine').
drink('Cola').
drink('Water').

alcohol('Beer').
alcohol('Wine').

% Available (good behavior) %
againGoodBehavior(Eat, Drink) :- fish(Eat), Drink \== 'Wine'.
againGoodBehavior(Eat, Drink) :- Eat == 'Salad', alcohol(Drink).
conceivable(Eat, Drink) :- mainDish(Eat), drink(Drink), not(againGoodBehavior(Eat, Drink)).

% Persons %
order('Daniel', Eat, Drink) :- conceivable(Eat, Drink), Drink == 'Beer'.
order('Julia', Eat, Drink) :- conceivable(Eat, Drink), not(fish(Eat)), not(pizza(Eat)), Drink \== 'Beer'.
order('Anne', Eat, Drink) :- conceivable(Eat, Drink), not(alcohol(Drink)).
order('Uwe', Eat, Drink) :- conceivable(Eat, Drink), (Eat == 'Schnitzel'; Eat == 'Rumpsteak'), (Drink == 'Beer'; Drink == 'Cola').
order('Monika', Eat, Drink) :- conceivable(Eat, Drink), Drink == 'Wine'.
order('Helmut', Eat, Drink) :- conceivable(Eat, Drink), Drink == 'Wine'.
