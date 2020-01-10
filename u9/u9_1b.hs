sumWithSigns::[(Float,Bool)]->Float
sumWithSigns [] = 0
sumWithSigns (x:xs)--Fallunterscheidung zwecks bestimmung des Vorzeichens
	| snd x == True = fst x + sumWithSigns xs
	| snd x == False = fst x*(-1) + sumWithSigns xs