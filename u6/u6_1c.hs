--width hat die Variablen a, b, c des typs Float
width :: Float -> Float -> Float ->  Float
width a b c
 -- anfangs pattern
 | a >= b && b >= c = a - c -- wenn a >= b >= c, dann groesstes Element - kleinstes Element
 --diese drei variablen folgen sind nicht durch Rotation erstellbar
 | a >= c && c >= b = a - b
 | c >= b && b >= a = c - a
 | b >= a && a >= c = b - c
 -- rotation der Variablen durch Rekursion
 | not (a > b) || not (b > c) = width c a b
 |otherwise = error "es ist ein Fehler aufgetreten"