--wenn die Funktion den namen 'newSumWithSigns' hat spuckt der Compiler Fehler aus, deswegen umbennant
peter::[(Float,Bool)]->Float
peter [] = 0
peter xs = foldr (peterHilfe) 0 xs

--hilfe bestimmt ob die Zahl normal oder Vorzeichen verkehrt (* -1) interpretiert wird.
peterHilfe::(Float,Bool)->Float->Float
peterHilfe (zahl,boolean) x
	| boolean == True = zahl + x
	| boolean == False = zahl*(-1) + x



--newSumOfAll
newSumOfAll::[[Float]]->[Float]
newSumOfAll [] = []
newSumOfAll xs = foldr (newSumOfAllHilfe) [] xs

--Hilsfunktion mit patternmaching, concatenation, rekursion
newSumOfAllHilfe::[Float]->[Float]->[Float]
newSumOfAllHilfe (x:xs) [] = (x:xs)
newSumOfAllHilfe [] (y:ys) = (y:ys)
newSumOfAllHilfe [] [] = []
newSumOfAllHilfe (x:xs) (y:ys) = [x+y] ++ newSumOfAllHilfe xs ys
