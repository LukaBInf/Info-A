--sumOfTwo: patternmatching & rekursion
sumOfTwo::[Float]->[Float]->[Float]
sumOfTwo [] [] = []
sumOfTwo xs [] = xs
sumOfTwo [] ys = ys
sumOfTwo (x:xs) (y:ys) =  [x+y] ++ sumOfTwo xs ys

sumOfAll::[[Float]]->[Float]
sumOfAll [] = []
sumOfAll (x:xs) = sumOfTwo x (sumOfAll xs)