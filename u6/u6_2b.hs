testParallel :: Float -> Float -> Float -> Float -> Bool
testParallel xg yg xh yh
	|xg - xh == yg - yh = True
	|otherwise = False


parallelThroughX :: Float -> Float -> Float -> Float
parallelThroughX xg' yg' x =  (yg / xg) * x 