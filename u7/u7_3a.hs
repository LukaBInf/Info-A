simpleShift0::Int->Int->Int
simpleShift0 l n
	| n>l = error "Fehler: n darf nicht groesser als l sein."--Fehlermeldung falls n ausserhalb des Intervalls liegt
	| n+1 < l = n+1--wenn n+1 kleiner l, n+1
	| otherwise = 0--wenn n+1 > l, zum anfang springen


jShift0::Int->Int->Int->Int
jShift0 j l n
	|j < 1 || l < 1 = error "Fehler: j < 1 || l < 1 ist Wahr!"
	|n>l = error "n ist groesser als l"
	|n+j < l = n+j
	|n+j > l = n + j - l -2
