g:: Int -> Int
g n
 | n==0 = 1
 | n==1 = 2
 | n==2 = 3
 | otherwise = g (n-1) - 2 * (g (n-2)) + g (n-3)