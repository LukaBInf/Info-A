--Hilfunktion zum berechnen der Fakultaet
fakultaet:: Integer -> Integer
fakultaet 0 = 1
fakultaet x = x* fakultaet(x-1)

binom1:: Integer -> Integer -> Integer
binom1 0 0 = 1
binom1 n k = div (fakultaet n) ((fakultaet k) * (fakultaet (n-k)))
