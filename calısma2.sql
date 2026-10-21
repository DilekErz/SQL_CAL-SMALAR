USE Northwind
select*from products  -- bu veritabanında gider ve bütün kayıtları açar ya da
select * from dbo.products -- bu da yaızlabilir
select*from northwind.dbo.products
select*
from products --anlık sorgu çalıştırmada sorun yok ama birsürü kişi çağırırsa bu bellek dolmasına sebep oluyor çünkü * koyunca hepsini çağırıyor
select ProductName,UnitPrice from products

select top 10 *from products -- ilk ondakiler MSSQL İLE
select *from products LIMIT 0,10 --mysql ile

select *from products where ReorderLevel<=10 --oracle

select top 5 ProductName ,UnitPrice from products --İlk 5 ürünün adını ve fiyatını getirir

select UnitPrice ,ProductName from products

select *from customers
select country from customers
select DISTINCT country from customers --tekrar eden verileri kaldırmak 
 select country ,city from customers
 select DISTINCT Country, city from customers --aynı ülke ve şehir kombinasyonlarını tekrarlamadan getirir
 --ör almanya -berlinde 5 kez geçiyorsa DISTINCT ile sadece 1 kez gösterilir

 select *from customers ORDER BY country -- bütün tablo gelir ama şehiri a dan z ye sıralar
 select *from customers ORDER BY country ASC --asc: A DAN z ye sırala
 select *from customers ORDER BY country DESC --desc: z den a ya doğru sıralama
 select *from customers ORDER BY country ,city --Önce ülkeye, aynı ülkedekileri şehre göre a dan Z ye sıralar
 select *from customers ORDER BY Country, City DESC --BURADA ÖNELİ NOKTA DESC sadece City için geçerlidir country varsayılan olarak ASC sıralanır

 select * from products ORDER BY unitprice
 select DISTINCT Country from customers
 select country from customers group by country -- Ülkeleri gruplar, her ülkeyi bir kez gösterir
 select DISTINCT country ,city from customers
 select country,city from customers group by country, city
 --GROUP BY DA * YERİNE SÜTÜN ADLARINI KOYMAK LAZIM DISTINCT gibi çalışır 



 select *from customers where country='germany' --almanyadaki müşterileri getiri
 select*from customers where not country='germany'--almanya olmayanları getir
 select *from customers where country <> 'germany' -- not ve <> aynı şeyler ikiside 
 select *from customers where country= 'germany' AND country='uk' --Sonuç boş gelir. Çünkü aynı müşteri aynı anda iki farklı ülkeye sahip olamaz
 select* from dbo.Customers where country='Germany' or country='UK'
 --bir kutu için AND kullanmayız ama FARKLI SÜTÜNLAR İÇİN OR Kullanabilriz 
--yani bir satrıdda evet almanyayı getir dedik ama aynı zamanda aynı kutu ingiltere olamaz aynı sorguyu ülkeleri çağırıyordak OR KULLANMALIYIZ AMA HEM COUNTRY DEKİ DEĞER HEM DE CİTY DE VE NOTASYONUNU KULLANAMBİLRİZ
select *from customers where country='Germany' and city='Berlin'
select *from customers where country='germany' or city='berlin'

select*from products where UnitPrice<21.35 Order by unitprice 
select *from products where unitprice <=21.35 Order by unitprice

select* from customers where country LIKE 'S%' --ülke adı S harfiyle başlayan müşterileri getirir
select*from customers where country LIKE '%n'-- ülke adı n ile biten müşteriyi getir
select*from customers where country LIKE '%a%'-- ülke adının ortalarında a harfi olanı getir
select*from customers where country LIKE '%an%' -- ülke adının ortalarında rka arkaya a ve n harfleri geçen
select *from customers where country LIKE 'sw%'
select*from customers where country LIKE 'swe%'--başında swe olanları getir
select *from products where CategoryID=3 
select *from products where categoryID=3 or CategoryID=5
select*from products where CategoryID=3 or categoryId=5 or categoryId=7

select*from products where CategoryID IN(3);-- kategori numarası 3 olanı getir
select *from products where CategoryID in(3,5);-- katagori num 3 ve 5 olanı getir
select *from products where categoryID in(3,5,7); -- 3 5 7 yi getir
select *from customers where country in('germany','uk','sweden')
select *from categories where categoryName LIKE 'C%'
SELECT *from products where categoryıd in(2,3)

select CategoryID,categoryName from Categories where categoryName LIKE 'c%'--adı C ile başlayan kategorilerin ID numaralarını ve adlarını getirir
select*from products where categoryID in(select categoryID from categories where categoryName LIKE 'C%')--adı c ile başlayan kategorileremait ürünleri getir

select *from products where unitprice >=15.50 and unitprice <=21.35 order by unitprice
select *from products where unitprice BETWEEN 15.50 and 21.35  order by unitprice --between ile arasındaki bütün değerlri getiriyoruz

select*from customers 
select* from customers where region is null --Region alanı NULL olan müşterileri getir
select*from customers where region is not null --NULL olmayan müşterileri getir
select*from customers where not region is null 

--İKİNCİ AŞAMA TABLO OLUŞTURUP AYARLAMA YAPMA :
--NESNE GEZGİNİNDEN grafik tabloları kısmında yeni tablo oluştur ve sütün ve veri türlerini belirttikten sonra OgrenciID kısmnda dokunup atta özellikler kısmından 
--Is Identity: Yes yapacaz ve 	ID otomatik oluşturulacak 
--sonra TABLOYU KAYDETME AYARINA GEÇECEZ VE :Tools → Options → Designers BURADAN DA "Prevent saving changes that require table re-creation"
--seçeneğinin işaretini KALDIRACAZZZ  ÇÜNKÜ:mevcut tablonun yapısını değiştirirken bazı değişiklikler tablonun yeniden oluşturulmasını gerektiriR Bu seçenek işaretliyse SSMS böyle değişikliklerin kaydedilmesini engeller
--İşareti kaldırınca bu tür değişikliklerin kaydedilmesine izin verilir Ancak veri bulunan tablolarda veri kaybı veya başka sorunlar oluşabileceği için dikkatli kullanılmalıdır

INSERT INTO Ogrenciler(Adi,Soyadi) values ('Dilek Ayça','Ersöz')--ogencilerin adı ve soyadı ekleme
Insert INTO Ogrenciler(Adi,Soyadi) values ('Ferhat','Kaygusuz')
select *from ogrenciler
INSERT INTO ogrenciler (Adi) values ('ayça')
INSERT INTO Ogrenciler (Adi,Soyadi,IseGirisTarihi)Values ('dilek ayça','ersöz','2026-12-01 21:49:34:834')
select getdate()--Sunucunun tarih ve saatini alma
INSERT INTO Ogrenciler (Adi,Soyadi,IseGirisTarihi) values ('ayşe','fatma',getdate())



 --BİR SONRAKİ DERS:(20.10.2026) ferhat kaygusuz ile 
 SELECT *FROM ogrenciler

 UPDATE ogreniler SET adi='BÜŞRA'WHERE OgrenciId=3
 Update ogrenciler set ödeme=ödeme+100 wHERE ogrenciId=3 --insert delete update de tekrar tekrar çalıştırısak her sferinde para artar ,bunu önlemek için coment eklemek daha mantıklı 
  --eğer  where eklemezsek bütün satırları güncelliyor herşeyi aynı yapıyor bu da hataya sebep veriyor
  Update ogrenciler set adi='ahmet',soyadı='y' --hataya sebebiyet verecez unutme where yazmayı

  select *from ogrenciler where ogrencilerId in(2,3)
   update ogrenciler set adi='busra', soyadı='x'where ogrenciId=3
   update ogrenciler set ödeme=ödeme-100
 where oğrenciID in(2,3)

 delete from ogrenciler where ogrenciID=3
 DELETE FROM ogrenciler --sakın bunu yapma bütün tabloyu sileriz
 --bu tip durumda ne yapacaz: task tan export data yapabilriz 
 update 


 --fazla veri çekmek belleğimizi doldurur sql i yorar
--join:
select p.productName,c.catagorieName 
from products p INNER JOİN catagories c on p. catagoryId =c.catagoryId

--union da ortak id li bulunduğunda ortak olandan bir tanesini siliyor 
--ama union all yazdığımızda hepsini getiriyor
