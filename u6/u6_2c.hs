crossingAt ::  Float -> Float -> Float -> Float -> Float
crossingAt xg yg xh yh
	|xg - xh == yg - yh = error "Geraden sind Parallel, es gibt keinen Schnittpunkt"
	|