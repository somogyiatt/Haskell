# Haskell

FELADAT

A közigazgatási rendszerben használt személyi azonosító (személyi szám) több információt tárol.
Az azonosító szám felépítése a születés időpontjától függ.

Használatát és képzési szabályát az alábbi törvény írja elő:

1. A személyi azonosító tizenegy jegyű szám.
2. A személyi azonosítót az alábbiak szerint kell képezni:
a) az 1. számjegy az állampolgár születésének évszázadát és nemét jelöli a következők szerint: 1997. január 1. és 1999. december 31. között született férfi 1, nő 2 és 1999. december 31. után férfi 3, nő 4.
b) a 2-7. számjegyek a polgár születési évének utolsó két számjegyét, a születés hónapját és napját tartalmazzák,
c) a 8-10. számjegyek az azonos napon születettek születési sorszáma,
d) a 11. számjegy az 1-10. számjegyek felhasználásával, matematikai módszerekkel képzett ellenőrzőszám.
3. A személyi azonosító 11. számjegyét úgy kell képezni, hogy a 2. a)-c) pontok szerint képzett számjegyek mindegyikét meg kell szorozni egy számmal, mégpedig a 10. helyen állót eggyel, a 9. helyen állót kettővel, a 8. helyen állót hárommal és így tovább. A szorzatokat össze kell adni, és az összeget tizeneggyel elosztani, az osztás maradéka adja a 11. számjegyet. A 2. c) pont szerinti születési sorszám nem osztható ki, ha a tizeneggyel való osztás maradéka egyenlő tízzel.

Készítsd el a szemelyiell, szemelyinem, szemelyiszul és szemelyisorszam függvényeket egy tetszőlegesen begépelt személyi szám információtartalmának megjelenítésére!
Természetesen tetszőleges számú ségédfüggvényt írhatsz.
A függvények használatára írj példát is (elegendő kommentben, nem szükséges main-t írni)!

Példa: szemelyiell 40504291247
Eredmény: Igaz

Példa: szemelyinem 40504291247
Eredmény: "nő"

Példa: szemelyiszul 40504291247
Eredmény: (2005,04,29)

Példa: szemelyisorszam 40504291247

Eredmény: 124
