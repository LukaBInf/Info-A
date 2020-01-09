countDigits ::String->Int
countDigits [] = 0
countDigits (x:xs) = 1+ countDigits xs

listsOfDiffs:: [Int] -> [Int]
listsOfDiffs [] = []
listsOfDiffs [x:xs] = []

fst'::[Int] -> Int
fst' [a,_] = a

snd'::[Int] -> Int
snd' [a,b,_] = b