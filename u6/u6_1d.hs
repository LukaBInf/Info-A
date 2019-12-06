missing :: Int -> Int -> Int -> Int
missing a b c = 10 - a - b - c --1+2+3+4 = 10 also 10 - a - b - c = x
--allgemeiner: alle Zahlen von 0 bis n addieren (kleiner Gauss), davon alle im Array/ der Liste vorhandenen Zahlen subtrahieren => output ist die fehlende Zahl.