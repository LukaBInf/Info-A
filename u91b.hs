sumWithSigns::[(Float,Bool)]->Float
sumWithSigns [] = 0
sumWithSigns (x:xs)
	| snd x == True = fst x + sumWithSigns xs --fst (head xs)                    --fst (1!!(xs)) --sumWithSigns (xs)
	| snd x == False = fst x*(-1) + sumWithSigns xs