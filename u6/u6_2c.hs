crossingAt ::  Float -> Float -> Float -> Float -> Float
crossingAt xg yg xh yh
	|(0-yg)/(xg-0) == (0-yh)/(xh-0) = error "Geraden sind parallel!" --prueft ob Geraden parallel sind wenn wahr, dann Fehlermeldung
	|