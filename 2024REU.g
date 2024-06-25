#Constructing groups via SemiDirect Products
G := Image(IsomorphismPermGroup(Sz(32)));; 
A := AutomorphismGroup(G);;  
H := Image(IsomorphismPermGroup(CyclicGroup(5)));; 
homomorphisms := AllHomomorphismClasses(H, A);;
Semis := Set(homomorphisms ,x -> Image(IsomorphismPermGroup(SemidirectProduct(H, x, G))));; 
listOfOrderLists := Set(Semis, x -> Set(ConjugacyClasses(x), y -> Order(Representative(y))));