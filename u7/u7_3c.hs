import Data.Char
caesar5::Char->Char
caesar5 a
	 | Data.Char.isLower a && Data.Char.ord a + 5 < 123 = Data.Char.chr (Data.Char.ord a + 5) --klein und im Bereich
	 | Data.Char.isLower a && Data.Char.ord a + 5 >= 123 = Data.Char.chr (Data.Char.ord a - 21) --klein und zurueckspringen
	 | Data.Char.isUpper a && Data.Char.ord a + 5 < 91 = Data.Char.chr (Data.Char.ord a + 5) --gross und im Bereich
	 | Data.Char.isUpper a && Data.Char.ord a + 5 >= 91 = Data.Char.chr (Data.Char.ord a - 21) --gross und zurueckspringen
	 | otherwise = error "Eingabe ist weder ein ASCII klein Buchstabe noch ein gross Buchstabe"
	 
jTwistedCaesar::Int->Char->Char
jTwistedCaesar j c
	 | Data.Char.isLower c && Data.Char.ord c + j < 123 = toUpper (Data.Char.chr (Data.Char.ord c + j)) --klein und im Bereich
	 | Data.Char.isLower c && Data.Char.ord c + j >= 123 = toUpper (Data.Char.chr (Data.Char.ord c - 26 + j)) --klein und zurueckspringen
	 | Data.Char.isUpper c && Data.Char.ord c + j < 91 = toLower (Data.Char.chr (Data.Char.ord c + j)) --gross und im Bereich
	 | Data.Char.isUpper c && Data.Char.ord c + j >= 91 = toLower (Data.Char.chr (Data.Char.ord c - 26 + j)) --gross und zurueckspringen
	 | otherwise = error "Eingabe ist weder ein ASCII klein Buchstabe noch ein gross Buchstabe"
--toLower & toUpper koennten auch durch subtraktion bzw. addition von 32 ersetztwerden (Abstand der gross zu klein Buchtsaben in ASCII) waehre jedoch schwerer zu lesen.