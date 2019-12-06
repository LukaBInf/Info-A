--Input : 4 Floats: xg yg xh yh, Output: Bool
testParallel :: Float -> Float -> Float -> Float -> Bool
testParallel xg yg xh yh
	--berechnung der Steigung aus Koordinatenform und vergleich dieser. Sind die Steigungen Identisch, sind die Geraden parallel.
	|(0-yg)/(xg-0) == (0-yh)/(xh-0) = True
	| otherwise = False

--Input: xg' yg' x'
parallelThroughX :: Float -> Float -> Float -> Float
parallelThroughX xg' yg' x'