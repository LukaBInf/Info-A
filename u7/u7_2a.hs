binom1 :: Integer -> Interger -> Integer
binom1 n k
--binom1 0 0 = 1 --patternmatching fuer n= 0 k=0 return 1
	|n==0 && k == 0 = 1
	|otherwise = (fakultaet(n)/(fakultaet(k)*fakultaet(n-k))--fakultaet funktion ist noch zu erstellen