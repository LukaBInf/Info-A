valueAt :: Float -> Float -> Float -> Float
valueAt xg yg x yg = (yg / xg) * x
 --|xg > yg = (yg / xg) * x
 --|xg < yg = (yg / xg) * x