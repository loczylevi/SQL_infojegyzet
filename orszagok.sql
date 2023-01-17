SELECT "______________________________________________";

.open "orszagok.db"

--SELECT * FROM orszagok

-- Mi MADAGASZKÁR fővárosa? 
SELECT "Mi MADAGASZKÁR fővárosa?";
SELECT Capital FROM orszagok WHERE Country = "MADAGASZKAR";
  
SELECT "______________________________________________";

-- Melyik ország fővárosa OUAGADOUGOU? Megoldás...
SELECT "Melyik ország fővárosa OUAGADOUGOU? Megoldás...";
SELECT Country FROM orszagok WHERE Capital = "OUAGADOUGOU";

SELECT "______________________________________________";

-- Melyik ország autójele a TT?
SELECT "Melyik ország autójele a TT?";
SELECT Country FROM orszagok WHERE Autojel = "TT";

SELECT "______________________________________________";


-- Melyik ország pénzének jele az SGD?
SELECT "Melyik ország pénzének jele az SGD?";
SELECT Country FROM orszagok WHERE Penzjel = "SGD";

SELECT "______________________________________________";

-- Melyik ország nemzetközi telefon-hívószáma a 61?
SELECT "Melyik ország nemzetközi telefon-hívószáma a 61";
SELECT Country FROM orszagok WHERE Telefon = "61";

SELECT "______________________________________________";


--Mekkora területű Monaco?
SELECT "Mekkora területű Monaco?";
SELECT Terulet FROM orszagok WHERE Orszag = "MONACO";

SELECT "______________________________________________";


--Hányan laknak Máltán? Megoldás...
SELECT "Hányan laknak Máltán? Megoldás...";
SELECT Nepesseg FROM orszagok WHERE Orszag = "MÁLTA";

SELECT "______________________________________________";

--Mennyi Japán népsűrűsége? 
SELECT "Mennyi Japán népsűrűsége? ";
SELECT (1000*Nepesseg)/Terulet FROM orszagok WHERE Orszag = "JAPÁN";

SELECT "______________________________________________";



--Hány lakosa van a Földnek? 
SELECT "Hány lakosa van a Földnek? ";
SELECT SUM(Nepesseg*1000) FROM orszagok;

SELECT "______________________________________________";


--Mennyi az országok területe összesen?
SELECT "Mennyi az országok területe összesen? ";
SELECT SUM(Terulet) FROM orszagok;

SELECT "______________________________________________";


--Mennyi az országok átlagos népessége? 
SELECT "Mennyi az országok átlagos népessége?  ";
SELECT AVG(Nepesseg*1000) FROM orszagok;

SELECT "______________________________________________";

--Mennyi az országok átlagos területe?
SELECT "Mennyi az országok átlagos területe?  ";
SELECT AVG(Terulet) FROM orszagok;

SELECT "______________________________________________";

--Mennyi a Föld népsűrűsége? 
SELECT "Mennyi a Föld népsűrűsége?   ";
SELECT SUM((1000*Nepesseg)/Terulet) FROM orszagok;

SELECT "______________________________________________";


--Hány 1.000.000 km2-nél nagyobb területű ország van? 
SELECT "Hány 1.000.000 km2-nél nagyobb területű ország van?   ";
SELECT COUNT(Terulet) FROM orszagok WHERE Terulet > 1000000;

SELECT "______________________________________________";

--Hány 100 km2-nél kisebb területű ország van?
SELECT "Hány 100 km2-nél kisebb területű ország van? ";
SELECT COUNT(Terulet) FROM orszagok WHERE Terulet < 100;

SELECT "______________________________________________";

--Hány 20.000 főnél kevesebb lakosú ország van?
SELECT "Hány 20.000 főnél kevesebb lakosú ország van? ";
SELECT COUNT(Nepesseg) FROM orszagok WHERE (Nepesseg*1000) < 20000;

SELECT "______________________________________________";


--Hány országra igaz, hogy területe kisebb 100 km2-nél, vagy pedig a lakossága kevesebb 20.000 főnél?
SELECT "Hány országra igaz, hogy területe kisebb 100 km2-nél, vagy pedig a lakossága kevesebb 20.000 főnél? ";
SELECT COUNT(Nepesseg) FROM orszagok WHERE Terulet < 100 OR (Nepesseg*1000) < 20000;

SELECT "______________________________________________";

--Hány ország területe 50.000 és 150.000 km2 közötti? 
SELECT "Hány ország területe 50.000 és 150.000 km2 közötti?  ";
SELECT COUNT(Nepesseg) FROM orszagok WHERE Terulet BETWEEN 50000 AND 150000;

SELECT "______________________________________________";


--Hány ország lakossága 8 és 12 millió közötti?
SELECT "Hány ország lakossága 8 és 12 millió közötti?  ";
SELECT COUNT(Nepesseg) FROM orszagok WHERE (Nepesseg*1000) BETWEEN 8000000 AND 12000000;

SELECT "______________________________________________";

--Mely fővárosok népesebbek 20 millió főnél?
SELECT "Mely fővárosok népesebbek 20 millió főnél? ";
SELECT Capital FROM orszagok WHERE (Nep_fovaros*1000) > 20000000;

SELECT "______________________________________________";

--Mely országok népsűrűsége nagyobb 500 fő/km2-nél?
SELECT "Mely országok népsűrűsége nagyobb 500 fő/km2-nél? ";
SELECT Country FROM orszagok WHERE (1000*Nepesseg)/Terulet > 500;

SELECT "______________________________________________";


--Hány ország államformája köztársaság?
SELECT "Hány ország államformája köztársaság? ";
SELECT COUNT(Country) FROM orszagok WHERE Allamforma LIKE '%köztársaság%';
SELECT "______________________________________________ B Verzió";
SELECT COUNT(Country) FROM orszagok WHERE Allamforma IN ('köztársaság');

SELECT "______________________________________________";



--Mely országok pénzneme a kelet-karib dollár?
SELECT "Mely országok pénzneme a kelet-karib dollár? ";
SELECT Country FROM orszagok WHERE Penznem LIKE '%kelet-karib dollár%';

SELECT "______________________________________________";



--Hány ország nevében van benne az "ORSZÁG" szó? 
SELECT "Hány ország nevében van benne az ORSZÁG szó? ";
SELECT COUNT(Country) FROM orszagok WHERE Orszag LIKE '%ORSZÁG%';

SELECT "______________________________________________";

--Mely országokban korona a hivatalos fizetőeszköz?
SELECT "Mely országokban korona a hivatalos fizetőeszköz? ";
SELECT Orszag FROM orszagok WHERE Penznem LIKE '%korona';

SELECT "______________________________________________";

--Mennyi Európa területe?
SELECT "Mennyi Európa területe? ";
SELECT SUM(Terulet) FROM orszagok WHERE Foldr_hely LIKE '%Európa%';

SELECT "______________________________________________";


--Mennyi Európa lakossága?
SELECT "Mennyi Európa lakossága? ";
SELECT SUM(Nepesseg*1000) FROM orszagok WHERE Foldr_hely LIKE '%Európa%';

SELECT "______________________________________________";

--Mennyi Európa népsűrűsége?
SELECT "Mennyi Európa népsűrűsége? ";
SELECT SUM((Nepesseg*1000)/Terulet) FROM orszagok WHERE Foldr_hely LIKE '%Európa%';

SELECT "______________________________________________";



--Hány ország van Afrikában?
SELECT "Hány ország van Afrikában? ";
SELECT COUNT(Orszag) FROM orszagok WHERE Foldr_hely LIKE '%Afrika%';

SELECT "______________________________________________";

--Mennyi Afrika lakossága?
SELECT "Mennyi Afrika lakossága? ";
SELECT SUM(Nepesseg*1000) FROM orszagok WHERE Foldr_hely LIKE '%Afrika%';

SELECT "______________________________________________";

--Mennyi Afrika népsűrűsége?
SELECT "Mennyi Afrika népsűrűsége ";
SELECT SUM((Nepesseg*1000)/Terulet) FROM orszagok WHERE Foldr_hely LIKE '%Afrika%';

SELECT "______________________________________________";

--Melyek a szigetországok? Megoldás...
SELECT "Melyek a szigetországok? Megoldás... ";
SELECT Orszag FROM orszagok WHERE Foldr_hely LIKE '%szigetország%';
SELECT "______________________________________________A Verzió";
SELECT Orszag FROM orszagok WHERE Foldr_hely LIKE '%sziget%';
SELECT "______________________________________________ B Verzió";

--Mely országok államformája hercegség, vagy királyság?
SELECT "Mely országok államformája hercegség, vagy királyság? ";
SELECT Orszag FROM orszagok WHERE Allamforma LIKE '%hercegség%' OR Allamforma LIKE '%királyság%';

SELECT "______________________________________________";


--Hány országnak nincs autójelzése?
SELECT "Hány országnak nincs autójelzése? ";
SELECT COUNT(Orszag) FROM orszagok WHERE Autojel IS NULL;

SELECT "______________________________________________";

--Mennyi a váltószáma az aprópénznek azokban az országokban, ahol nem 100?
SELECT "Mennyi a váltószáma az aprópénznek azokban az országokban, ahol nem 100? ";
SELECT Valtopenz FROM orszagok WHERE Valtopenz NOT LIKE '%100%';

SELECT "______________________________________________";
-- SELECT Valtopenz FROM orszagok;


--Hány ország területe kisebb Magyarországénál? 
--Melyik a legnagyobb területű ország, és mennyi a területe? 
--Melyik a legkisebb területű ország, és mennyi a területe?
--Melyik a legnépesebb ország, és hány lakosa van?
--Melyik a legkisebb népességű ország, és hány lakosa van?
--Melyik a legsűrűbben lakott ország, és mennyi a népsűrűsége?
--Melyik a legritkábban lakott ország, és mennyi a népsűrűsége?
--Melyik a legnagyobb afrikai ország és mekkora?
--Melyik a legkisebb amerikai ország és hányan lakják?
--Melyik az első három legsűrűbben lakott "országméretű" ország (tehát nem város- vagy törpeállam)? 
--Melyik a világ hat legnépesebb fővárosa?
--Melyik tíz ország egy főre jutó GDP-je a legnagyobb? Megoldás...
--Melyik tíz ország össz-GDP-je a legnagyobb? Megoldás...
--Melyik országban a legszegényebbek az emberek? Megoldás...
--Melyik a 40. legkisebb területű ország? 
--Melyik a 15. legkisebb népsűrűségű ország?
--Melyik a 61. legnagyobb népsűrűségű ország?
--Melyik három ország területe hasonlít leginkább Magyaroszág méretéhez? Megoldás...
--Az emberek hányadrésze él Ázsiában? 
--A szárazföldek mekkora hányadát foglalja el Oroszország?
--Az emberek hány százaléka fizet euroval?
--Hányszorosa a leggazdagabb ország egy főre jutó GDP-je a legszegényebb ország egy főre jutó GDP-jének? Megoldás...
--A világ össz-GDP-jének hány százalékát adja az USA?
--A világ össz-GDP-jének hány százalékát adja az euroövezet?
--Melyek azok az átlagnál gazdagabb országok, amelyek nem az európai vagy az amerikai kontinensen találhatóak?
--Milyen államformák léteznek Európában? 
--Hányféle államforma létezik a világon? 
--Hányféle fizetőeszközt használnak Európában az eurón kívül?
--Mely pénznemeket használják több országban is?  Megoldás...
--Mely országok államformája egyedi? Megoldás...


--URISTEN VERY BIG  ༼ つ ◕_◕ ༽つ༼ つ ◕_◕ ༽つ༼ つ ◕_◕ ༽つ༼ つ ◕_◕ ༽つ༼ つ ◕_◕ ༽つ༼ つ ◕_◕ ༽つ༼ つ ◕_◕ ༽つ