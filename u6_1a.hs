equalSums:: Int -> Int -> Int -> Int -> Bool
equalSums a b c d
	| a + b == c + d = True
	| a + c == d + b = True
	| a + d == c + b = True
	|otherwise = False