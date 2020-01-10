average1::[[Float]]->[Float]
average1 [] = []
average1 (x:xs) = [average0 x] ++ average1 xs

--average0 ist eine Hilfsfunktion die den Durchschnitt einer Liste berechnet.
average0::[Float]->Float
average0 [] = 0
average0 xs = (sum xs / lange xs)

--Neudefinition von length zu lange, da length Int ausgibt, jedoch Float benoetigt wird.
lange::[Float]->Float
lange [] = 0 
lange (x:xs)  = 1 + lange xs