--Input: 4 Floats xg yg xh yh; Output: Scnittpunkt x
crossingAt ::  Float -> Float -> Float -> Float -> Float
crossingAt xg yg xh yh
	| (0-yg)/(xg-0) == (0-yh)/(xh-0) = error "Geraden sind parallel!" --prueft ob die Geraden parallel sind: wenn wahr, dann Fehlermeldung
	--berechung des Schnittpunkt x
	| otherwise = ((0-xh)*(xg*yg - 0*0)-(xg -0)*(0*0-xh*yh))/((0-0)*(xg-0)-(0-yg)*(0-xh))