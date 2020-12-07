/*Tüm tablolarýn birleþimi*/

SELECT M.MusteriAd + ' ' + M.MusteriSoyad  AS 'Müþteri Ad Soyad',M.MusteriCEPTEL AS 'Müþteri Telefon Numarasý',M.MusteriTC AS'Müþteri Kimlik Numarasý',M.MusteriDTARIHI AS 'Müþteri Doðum Tarihi',U.UrunAD AS 'Ürün Adý' ,U.UrunMARKA AS 'Ürün Marka Adý',K.KategoriAD AS 'Kategori Adý' ,  P.PersonelAD +' ' + P.PersonelSOYAD AS 'Personel Ad Soyad' ,S.Tarih AS 'Ýþlem Tarihi'
FROM Satislar S INNER JOIN Musteri M ON  S.Musteri=M.MusteriID
INNER JOIN Urun U ON S.Urun=U.UrunID 
INNER JOIN Kategori K ON U.Kategori=K.KategoriID
INNER JOIN Personel P ON S.Personel=P.PersonelID




/*Müþteri sayýsýný bulan sorgu*/

SELECT COUNT(MusteriTC) AS 'Müþteri Sayýsý'
FROM Musteri



/*Müþterilerin yaþýnýn ortalamasýný bulan sorgu*/

SELECT AVG (DATEDIFF(YEAR,MusteriDTARIHI,GETDATE())) AS 'Müþterilerin Yaþýnýn Ortalamasý'
FROM Musteri 

/*Personellerin yaptýðý toplam satýþlarý bulan sorgu*/
SELECT P.PersonelAD, COUNT(SatisID) AS 'Yaptýðý Toplam Satýþ'
FROM Satislar S INNER JOIN Personel P ON S.Personel=P.PersonelID
GROUP BY P.PersonelAD



/*Personellerin yaptýðý satýþlarýn toplam fiyatýný bulan sorgu*/
SELECT P.PersonelAD, SUM(ToplamFiyat) AS 'Yaptýðý Satýþlarýn Toplam Fiyatý'
FROM Satislar S INNER JOIN Personel P ON S.Personel=P.PersonelID
GROUP BY P.PersonelAD


/*Ürünlerin satýlma rakamlarýný bulan sorgu*/
SELECT U.UrunAD , SUM(S.Adet) AS 'Ürünlerin Satýlma Rakamlarý'
FROM Satislar S INNER JOIN Urun U ON S.Urun=U.UrunID
GROUP BY U.UrunAD
ORDER BY [Ürünlerin Satýlma Rakamlarý] DESC



/*Kategorilerin satýlma rakamlarýný bulan sorgu*/
SELECT K.KategoriAD AS 'Kategori Adý' , SUM(S.Adet) AS 'Satýlma Rakamý'
FROM Satislar S INNER JOIN Kategori K ON S.Kategori=K.KategoriID
GROUP BY K.KategoriAD
ORDER BY  [Satýlma Rakamý] DESC


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