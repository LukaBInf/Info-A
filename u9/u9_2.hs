f:: Int -> [(Int,Int)]
f n = [(a,b) | a <- [1..n], b <- [1..n], mod (a*b) n == 0]

part4 :: Int -> [(Int,Int,Int,Int)]
part4 n = [(x,y,z,h) | x <- [1..n], y <- []1..n, z <-[1..n], h <- [1..n], ((x+y)+(z+h)) == n]