universalShift::Int->Int->Int->Int->Int
universalShift j k l n
	|j < 1 || l < 1 = error "Fehler!"
	|n>l||n<k = error "n liegt ausserhalb des Intervalls"
	|k<0 = error "k ist kleiner als 0"
	|l <= k = error "l ist kleiner gleich k"
	|n+j < l = n+j
	|n+j > l = n + j - (l-k) -1
