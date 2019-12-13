binom2::Integer->Integer-Integer
binom2 n 0 = 1
binom2 n k = (binom2 (n-1) k) + (binom2 (n-1) (k-1))--rekursion

