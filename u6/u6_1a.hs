--equalsums input: 4 Int a,b,c,d ; output: Bool
equalSums:: Int -> Int -> Int -> Int -> Bool
equalSums a b c d
	--alle moeglichen Kombinationen
	| a + b == c + d = True
	| a + c == d + b = True
	| a + d == c + b = True
	--nicht moeglich, also false
	|otherwise = False
