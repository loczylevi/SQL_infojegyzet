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
SELECT COUNT(Orszag) FROM orszagok WHERE Terulet BETWEEN 50000 AND 150000;

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
SELECT Valtopenz FROM orszagok WHERE Valtopenz NOT LIKE '100%'; -- nem tudom hogy itt mit tudnék kezdeni

SELECT "______________________________________________";


--Hány ország területe kisebb Magyarországénál? 
SELECT "Hány ország területe kisebb Magyarországénál?  ";
--SELECT Terulet AS magyar FROM orszagok WHERE Orszag = "MAGYARORSZÁG";
SELECT COUNT(Orszag) FROM orszagok WHERE Terulet < 93036;
SELECT "______________________________________________";


--Melyik a legnagyobb területű ország, és mennyi a területe? 
SELECT "Melyik a legnagyobb területű ország, és mennyi a területe?   ";

SELECT Orszag, MAX(Terulet) FROM orszagok;
SELECT "______________________________________________";

--Melyik a legkisebb területű ország, és mennyi a területe?
SELECT "Melyik a legkisebb területű ország, és mennyi a területe?   ";

SELECT Orszag, MIN(Terulet) FROM orszagok;
SELECT "______________________________________________";


--Melyik a legnépesebb ország, és hány lakosa van?
SELECT "Melyik a legnépesebb ország, és hány lakosa van?   ";

SELECT Orszag, MAX(Nepesseg*1000) FROM orszagok;
SELECT "______________________________________________";

--Melyik a legkisebb népességű ország, és hány lakosa van?
SELECT "Melyik a legkisebb népességű ország, és hány lakosa van?   ";

SELECT Orszag, MIN(Nepesseg*1000) FROM orszagok;
SELECT "______________________________________________";

--Melyik a legsűrűbben lakott ország, és mennyi a népsűrűsége?
SELECT "Melyik a legsűrűbben lakott ország, és mennyi a népsűrűsége?   ";

SELECT Orszag,Nepesseg*1000/Terulet, MAX(Nepesseg*1000) FROM orszagok;
SELECT "______________________________________________";

--Melyik a legritkábban lakott ország, és mennyi a népsűrűsége?
SELECT "Melyik a legritkábban lakott ország, és mennyi a népsűrűsége?   ";

SELECT Orszag,Nepesseg*1000/Terulet, MIN(Nepesseg*1000) FROM orszagok;
SELECT "______________________________________________";

--Melyik a legnagyobb afrikai ország és mekkora?

SELECT "Melyik a legnagyobb afrikai ország és mekkora?   ";

SELECT Orszag,MAX(Terulet) FROM orszagok WHERE Foldr_hely LIKE '%Afrika%';
SELECT "______________________________________________";

--Melyik a legkisebb amerikai ország és hányan lakják?
SELECT "Melyik a legkisebb amerikai ország és hányan lakják?   ";

SELECT Orszag,MIN(Terulet),Nepesseg*1000 FROM orszagok WHERE Foldr_hely LIKE '%Amerika%';
SELECT "______________________________________________";

--Melyik az első három legsűrűbben lakott "országméretű" ország (tehát nem város- vagy törpeállam)? 
SELECT "Melyik az első három legsűrűbben lakott országméretű ország (tehát nem város- vagy törpeállam)?    ";

SELECT Orszag, Nepesseg*1000/Terulet AS nepsuruseg FROM orszagok WHERE Foldr_hely NOT LIKE '%városállam%' AND Foldr_hely NOT LIKE '%törpeállam%' ORDER BY nepsuruseg DESC LIMIT 0,3;
SELECT "______________________________________________";


--Melyik a világ hat legnépesebb fővárosa?
SELECT "Melyik a világ hat legnépesebb fővárosa?  ";

SELECT Capital,Nep_fovaros*1000 AS nep FROM orszagok ORDER BY nep DESC LIMIT 0,6;


SELECT "______________________________________________";

--Melyik tíz ország egy főre jutó GDP-je a legnagyobb? Megoldás...
SELECT "Melyik tíz ország egy főre jutó GDP-je a legnagyobb? Megoldás...   ";

SELECT Orszag,GDP AS fo FROM orszagok ORDER BY fo DESC LIMIT 0,10;
SELECT "______________________________________________";

--Melyik tíz ország össz-GDP-je a legnagyobb? Megoldás...
SELECT "Melyik tíz ország össz-GDP-je a legnagyobb? Megoldás...  ";

SELECT Orszag,GDP*Nepesseg AS fo FROM orszagok ORDER BY fo DESC LIMIT 0,10;
SELECT "______________________________________________";


--Melyik országban a legszegényebbek az emberek? Megoldás...
SELECT "Melyik országban a legszegényebbek az emberek? Megoldás... ";

SELECT Orszag,MIN(GDP) AS fo FROM orszagok;
SELECT "______________________________________________";


--Melyik a 40. legkisebb területű ország? 
SELECT "Melyik a 40. legkisebb területű ország?  ";

SELECT Orszag,Terulet AS te FROM orszagok ORDER BY te ASC LIMIT 39, 1;
SELECT "______________________________________________";


--Melyik a 15. legkisebb népsűrűségű ország?

SELECT "Melyik a 15. legkisebb népsűrűségű ország?  ";

SELECT Orszag,Nepesseg*1000/Terulet AS suru FROM orszagok ORDER BY suru ASC LIMIT 14, 1;
SELECT "______________________________________________";

--Melyik a 61. legnagyobb népsűrűségű ország?
SELECT "Melyik a 61. legnagyobb népsűrűségű ország?  ";

SELECT Orszag,Nepesseg*1000/Terulet AS suru FROM orszagok ORDER BY suru DESC LIMIT 60, 1;
SELECT "______________________________________________";

--Melyik három ország területe hasonlít leginkább Magyaroszág méretéhez? Megoldás...
SELECT "Melyik három ország területe hasonlít leginkább Magyaroszág méretéhez? Megoldás...  ";

SELECT Orszag,Terulet AS suru FROM orszagok WHERE Orszag <> "MAGYARORSZÁG" ORDER BY suru  LIMIT 84, 3 ;
SELECT "______________________________________________";



--Az emberek hányadrésze él Ázsiában? 
SELECT "Az emberek hányadrésze él Ázsiában?";

SELECT (SUM(nepesseg*1000)+0.0)/(SELECT SUM(nepesseg*1000) FROM orszagok WHERE Foldr_hely LIKE '%Ázsia%') FROM orszagok;
SELECT "______________________________________________";

--A szárazföldek mekkora hányadát foglalja el Oroszország?
SELECT "A szárazföldek mekkora hányadát foglalja el Oroszország?";

SELECT (SUM(17075400)+0.0)/(SELECT SUM(Terulet) FROM orszagok WHERE Foldr_hely NOT LIKE '%óceán%' AND Foldr_hely NOT LIKE '%tenger%') FROM orszagok ;


SELECT "______________________________________________";


--Az emberek hány százaléka fizet euroval?
SELECT "Az emberek hány százaléka fizet euroval?";

SELECT (SELECT SUM(Nepesseg*1000) FROM orszagok WHERE Penznem LIKE '%euró%')/(SUM(Nepesseg*1000)+0.0) * 1000 FROM orszagok ;
SELECT "______________________________________________";

-- SELECT Penznem FROM orszagok;




--Hányszorosa a leggazdagabb ország egy főre jutó GDP-je a legszegényebb ország egy főre jutó GDP-jének? Megoldás...
SELECT "Hányszorosa a leggazdagabb ország egy főre jutó GDP-je a legszegényebb ország egy főre jutó GDP-jének? Megoldás...";

SELECT (MAX(GDP))/(SELECT MIN(GDP) FROM orszagok) FROM orszagok;
SELECT "______________________________________________";

--A világ össz-GDP-jének hány százalékát adja az USA?
SELECT "A világ össz-GDP-jének hány százalékát adja az USA?";
SELECT (SUM(GDP)+0.0)/(SELECT SUM(GDP) FROM orszagok WHERE orszag LIKE '%Amerika%') FROM orszagok;
SELECT "______________________________________________";

--A világ össz-GDP-jének hány százalékát adja az euroövezet?
SELECT "A világ össz-GDP-jének hány százalékát adja az euroövezet?";

SELECT (SUM(GDP)+0.0)/(SELECT SUM(GDP) FROM orszagok WHERE Penznem LIKE '%euró%') FROM orszagok;
SELECT "______________________________________________";

--Melyek azok az átlagnál gazdagabb országok, amelyek nem az európai vagy az amerikai kontinensen találhatóak?
SELECT "Melyek azok az átlagnál gazdagabb országok, amelyek nem az európai vagy az amerikai kontinensen találhatóak?";

SELECT Orszag,GDP AS gazdag FROM orszagok WHERE Foldr_hely NOT LIKE '%európa%' AND Foldr_hely NOT LIKE '%amerika%' ORDER BY gazdag DESC LIMIT 10;
SELECT "______________________________________________";

--Milyen államformák léteznek Európában? 
SELECT "Milyen államformák léteznek Európában? ";

SELECT Allamforma FROM orszagok WHERE Foldr_hely LIKE '%európa%';
SELECT "______________________________________________";
--Hányféle államforma létezik a világon? 
SELECT "Hányféle államforma létezik a világon? ";

SELECT COUNT(DISTINCT Allamforma) FROM orszagok;
SELECT "______________________________________________";

--Hányféle fizetőeszközt használnak Európában az eurón kívül?
SELECT "Hányféle fizetőeszközt használnak Európában az eurón kívül? ";

SELECT COUNT(DISTINCT Penznem) FROM orszagok WHERE Foldr_hely LIKE '%európa%' AND Penznem NOT LIKE '%euró%';
SELECT "______________________________________________";


--Mely pénznemeket használják több országban is?  Megoldás...
SELECT "Mely pénznemeket használják több országban is?  Megoldás... ";

SELECT "passz";
SELECT "______________________________________________";

--Mely országok államformája egyedi? Megoldás...

SELECT "Mely országok államformája egyedi? Megoldás...";
SELECT DISTINCT Allamforma FROM orszagok;

SELECT "______________________________________________";
--URISTEN VERY BIG  ༼ つ ◕_◕ ༽つ༼ つ ◕_◕ ༽つ༼ つ ◕_◕ ༽つ༼ つ ◕_◕ ༽つ༼ つ ◕_◕ ༽つ༼ つ ◕_◕ ༽つ༼ つ ◕_◕ ༽つ
