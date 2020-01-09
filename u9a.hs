
xs = [[6,4,6,-1,5,0]]
schreiben::[Int]->[Int]
schreiben (x:xs)
	| x < 0 = " "
	| x > 0 = "|"
	| x = 0 = "*"
	
	--muss irgendwie next aufrufen
	--gibt in Haskell effect????	
	
expand::[Int]->[Int]
--concatenation von Listen symbol und -1, somit wird immer eine Zeile abstand erschaffen
--vllt. [alte neue ausgabe]++ head a ++ -1 in einen neuen string
--rekursiver aufruf, bis Liste fertzig

next :: [Int] -> [Int]--erzeugt neue Zeile durch -1 rechnen
map (+(-1)) xs --moegliche Fehler quelle, da expand rekursiven aufruf enthält andsonsten output von expand übernehmen
schreiben next--schreib den output von next