tomb :: Int -> [Int]
tomb 0 = []
tomb x = tomb(x `div` 10) ++ [x `mod` 10]

utolso :: [Int] -> Int  -> [Int]
utolso [] x = []
utolso _ 0 = []
utolso (h:t) x = drop x (h:t)

elso :: [Int] -> Int -> [Int]       
elso [] x = []
elso _ 0 = [] 
elso (h:t) n = h : elso t (n-1) 


szamma :: [Int] -> Int
szamma = foldl szamol 0
	where 
		szamol t szam = 10*t + szam

--szamma(utolso(elso(tomb 12345678901) 10)7)
--szamma(utolso(elso(tomb 12345678901) 7)1)
--szamma(elso(tomb 12345678901) 1)

szemelyinem :: Int -> String
szemelyinem  x =
	if((szamma(elso(tomb x) 1)) == 1  || (szamma(elso(tomb x) 1)) == 3)
		then   "ferfi"
		else  "no"
	
szemelyisorszam :: Int -> Int
szemelyisorszam  k = szamma(utolso(elso(tomb k) 10)7)



szemelyiszul :: Int -> String
szemelyiszul x = 
		if( ((szamma(elso(tomb x) 1)) == 1) || ((szamma(elso(tomb x) 1)) == 2))
			then  "(" ++ "19" ++ show year1 ++ show year2 ++ "," ++ show month1 ++ show month2 ++ "," ++ show day1 ++ show day2  ++ ")"
			else  "(" ++ "20" ++ show year1 ++ show year2 ++ "," ++ show month1 ++ show month2 ++ "," ++ show day1 ++ show day2  ++ ")"
		where
			year1 = (szamma(utolso(elso(tomb x) 2)1))
			year2 = (szamma(utolso(elso(tomb x) 3)2))
			month1 = (szamma(utolso(elso(tomb x) 4)3))
			month2 = (szamma(utolso(elso(tomb x) 5)4))
			day1 = (szamma(utolso(elso(tomb x) 6)5))
			day2 = (szamma(utolso(elso(tomb x) 7)6))	


meret :: [Int] -> Int 
meret [] = 0
meret (h:t) = 1 + meret t

osszegez :: [Int] -> Int
osszegez lista = osszeg lista
	where
		osszeg [] = 0
		osszeg (h:t) = (h*(meret(t)+1)) + osszeg t
		



szemelyiell :: Int -> Bool
szemelyiell x = 
	if (((osszegez(elso(tomb x) 10)) `mod` 11) == ((szamma(utolso(tomb x) 10)))) && ((szemelyisorszam(x) `mod` 11) /= 10)
		then True
		else  False


	
		
{-Példa: 
szemelyinem 40504291247
Eredmény: "no"
szemelyinem 10504291247
Eredmény: "ferfi"

Példa: 
szemelyisorszam 40504291247
Eredmény: 124

Példa: 
szemelyiell 40504291247
Eredmény: True
szemelyiell 40504291107
Eredmény: False


Példa: 
szemelyiszul 40504291247
Eredmény: (2005,04,29)


-}

