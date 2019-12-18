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
    | ((abs (t)/abs(s)) > ((10-y) / (20-x))) && ((s > 0) && (t > 0))= (x+ (s/t * (10-y)),10) --Nord Richtig
    | ((abs (t)/abs(s)) > ((10-y) / (20-x))) && ((s < 0) && (t > 0))= (x+ (s/t * (10-y)),10) --Nord richtig
    | ((abs (t)/abs(s)) < ((10-y) / (20-x))) && ((s > 0) && (t > 0))= (20,(y+ (t/s * (20-x)))) --"Ost"Richtig
    | ((abs (t)/abs(s)) < ((10-y) / (20-x))) && ((s > 0) && (t < 0))= (20,(y+ (t/s * (20-x))))--"Ost"Richtig
    | ((abs (t)/abs(s)) < ((10-y) / (20-x))) && ((s < 0) && (t > 0))= (0,(y+ (t/s * (0-x))))--"west"Richtig
    | ((abs (t)/abs(s)) < ((10-y) / (20-x))) && ((s < 0) && (t < 0))= (0,(y+ (t/s * (0-x))))--"west"HÄÄÄÄÄÄÄÄÄ <
    | ((abs (t)/abs(s)) > ((10-y) / (20-x))) && ((s < 0) && (t < 0))= (x+ (s/t * (0-y)),0)--"Sued"Richtig
    | ((abs (t)/abs(s)) > ((10-y) / (20-x))) && ((s > 0) && (t < 0))= (x+ (s/t * (0-y)),0)--"Sued"Richtig