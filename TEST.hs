help::[(Float,Bool)]->[Float]
help (x:xs)
	| snd x == True = x
	| snd x == False = x* (-1)