/*T�m tablolar�n birle�imi*/

SELECT M.MusteriAd + ' ' + M.MusteriSoyad  AS 'M��teri Ad Soyad',M.MusteriCEPTEL AS 'M��teri Telefon Numaras�',M.MusteriTC AS'M��teri Kimlik Numaras�',M.MusteriDTARIHI AS 'M��teri Do�um Tarihi',U.UrunAD AS '�r�n Ad�' ,U.UrunMARKA AS '�r�n Marka Ad�',K.KategoriAD AS 'Kategori Ad�' ,  P.PersonelAD +' ' + P.PersonelSOYAD AS 'Personel Ad Soyad' ,S.Tarih AS '��lem Tarihi'
FROM Satislar S INNER JOIN Musteri M ON  S.Musteri=M.MusteriID
INNER JOIN Urun U ON S.Urun=U.UrunID 
INNER JOIN Kategori K ON U.Kategori=K.KategoriID
INNER JOIN Personel P ON S.Personel=P.PersonelID




/*M��teri say�s�n� bulan sorgu*/

SELECT COUNT(MusteriTC) AS 'M��teri Say�s�'
FROM Musteri



/*M��terilerin ya��n�n ortalamas�n� bulan sorgu*/

SELECT AVG (DATEDIFF(YEAR,MusteriDTARIHI,GETDATE())) AS 'M��terilerin Ya��n�n Ortalamas�'
FROM Musteri 

/*Personellerin yapt��� toplam sat��lar� bulan sorgu*/
SELECT P.PersonelAD, COUNT(SatisID) AS 'Yapt��� Toplam Sat��'
FROM Satislar S INNER JOIN Personel P ON S.Personel=P.PersonelID
GROUP BY P.PersonelAD



/*Personellerin yapt��� sat��lar�n toplam fiyat�n� bulan sorgu*/
SELECT P.PersonelAD, SUM(ToplamFiyat) AS 'Yapt��� Sat��lar�n Toplam Fiyat�'
FROM Satislar S INNER JOIN Personel P ON S.Personel=P.PersonelID
GROUP BY P.PersonelAD


/*�r�nlerin sat�lma rakamlar�n� bulan sorgu*/
SELECT U.UrunAD , SUM(S.Adet) AS '�r�nlerin Sat�lma Rakamlar�'
FROM Satislar S INNER JOIN Urun U ON S.Urun=U.UrunID
GROUP BY U.UrunAD
ORDER BY [�r�nlerin Sat�lma Rakamlar�] DESC



/*Kategorilerin sat�lma rakamlar�n� bulan sorgu*/
SELECT K.KategoriAD AS 'Kategori Ad�' , SUM(S.Adet) AS 'Sat�lma Rakam�'
FROM Satislar S INNER JOIN Kategori K ON S.Kategori=K.KategoriID
GROUP BY K.KategoriAD
ORDER BY  [Sat�lma Rakam�] DESC


/*Tablolar*/

SELECT *
FROM Musteri

SELECT *
FROM Urun

SELECT *
FROM Kategori

SELECT *
FROM Personel

SELECT *
FROM Satislar