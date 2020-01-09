type Position = (Float,Float)
type Strike = (Float,Float)

hitsBank:: Position -> Strike -> Bool
hitsBank (x,y) (s,t)
    | x + s > 20 = True
    | x + s < 0 = True
    | y + t > 10 = True
    | y + t < 0 = True
    | otherwise = False

bankPos:: Position -> Strike -> Position
bankPos (x,y) (s,t)
    | ((abs (t)/abs(s)) > ((10-y) / (20-x))) && ((s > 0) && (t > 0))= (x+ (s/t * (10-y)),10) --Nord
    | ((abs (t)/abs(s)) > ((10-y) / (20-x))) && ((s < 0) && (t > 0))= (x+ (s/t * (10-y)),10) --Nord
    | ((abs (t)/abs(s)) < ((10-y) / (20-x))) && ((s > 0) && (t > 0))= (20,(y+ (t/s * (20-x)))) --Ost
    | ((abs (t)/abs(s)) < ((10-y) / (20-x))) && ((s > 0) && (t < 0))= (20,(y+ (t/s * (20-x))))--Ost
    | ((abs (t)/abs(s)) < ((10-y) / (20-x))) && ((s < 0) && (t > 0))= (0,(y+ (t/s * (0-x))))--West
    | ((abs (t)/abs(s)) > ((10-y) / (20-x))) && ((s < 0) && (t < 0)) && (0 > (x+ (s/t * (0-y))))= (0,(y+ (t/s * (0-x))))--West, da Bedingungen gleich sind wie beim Süd-westen, musste (0 > (x+ (s/t * (0-y)))) eingefügt werden. somit wird dir Berechnung nur durchgefuehrt, wenn die Südberechnung negativ Werte ausgibt
    | ((abs (t)/abs(s)) > ((10-y) / (20-x))) && ((s < 0) && (t < 0))= (x+ (s/t * (0-y)),0)--Sued
    | ((abs (t)/abs(s)) > ((10-y) / (20-x))) && ((s > 0) && (t < 0))= (x+ (s/t * (0-y)),0)--Sued