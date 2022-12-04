--1-Kargo şirketlerine toplam kaç para ödendiğini hesaplayınız
select sum(car.fee) "Total Amount of Cargo Fee" from orders ord
inner join cargoes car
on ord.cargoid = car.id;

--2-Halihazırda indirimli ve isminde 'b' geçen tüm ürünleri listeleyiniz.
select pr.id "Ürün ID",pr.name "Ürün Adı",max(cam.discountrate) "İndirim Oranı" from campaigns cam
inner join products_campaigns pc
on cam.id = pc.campaingid
inner join products pr
on pc.productid = pr.id
group by pr.id
having lower(pr.name) like '%b%'

--3- 3. harfi c olan tüm ürünleri listeleyiniz.
select * from products where name like '__c%'

--4-Bir kişinin sipariş oluştururken kullanacağı insert komutlarını yazınız
--(alt tablolar dahil ve siparişte en az 3 ürün olacak şekilde)

insert into customers (name,surname,email,address_id) 
values ('Taylan','Kandemir','taylan@hotmail.com',9);

insert into baskets (customerid) values (7);

insert into products_basket (productid,basketid) values (1,10);
insert into products_basket (productid,basketid) values (2,10);
insert into products_basket (productid,basketid) values (3,10);

insert into orders (paymentoptions,orderdate,cargoid,customerid,statue_id,address_id)
values ('cash',CURRENT_DATE,1,7,3,9);

insert into products_orders (productid,orderid,quantity,totalprice)values (1,14,1,255);
insert into products_orders (productid,orderid,quantity,totalprice)values (2,14,1,355);
insert into products_orders (productid,orderid,quantity,totalprice)values (3,14,1,400);

--5-Sipariş oluşturduktan sonra sepeti boşaltacak update komutlarını oluşturunuz.
--Bu database kurgusunda bu soruya yanıt verilemez sebebi 'baskets' ve 'Products_basket'
--tabloların yapısı bu update için uygun değildir. Ancak sadece 'Delete' yapılabilir.

select * from products_basket 
where basketid in(select id from baskets where customerid =7)

--Delete from products_basket 
where basketid in(select id from baskets where customerid =7)

--6-İndirim halindeki ürünlerin indirim uygulanmış fiyatlarıyla listelenmesini sağlayınız.
select p.*,(unit_price)-(unit_price*is_discount)indirimli_fiyat from products p
where is_discount is not null;

--7-son bir yılda kullanıcılar tarafından en çok tercih edilen ürünleri listeleyen sorguyu yazınız
select p.name,count(1) from orders o
inner join products_orders po
on o.id = po.orderid
inner join products p
on p.id=po.productid
where orderdate > current_date - 365
group by p.name order by 2 desc

--8-Kullanıcı bir ürün iade etmek istediğinde oluşacak insert komutunu geliştiriniz.
insert into orders( paymentoptions, orderdate,cargoid, customerid, statue_id, address_id)
VALUES ('debit_card','2022-12-01','4','4','2','9')
returning*;

--9-İade durumları değiştiğinde oluşacak update komutunu geliştiriniz.
update returns set reasonsid='4'
where id=1
returning*;

--10-Satıcı ürünü güncellemek istediğinde oluşacak örnek bir update komutu geliştiriniz.

Update products set name ='Glitter Far 19 Parça Far Paleti',
stock ='678',
category_id = '12', 
brand_id = '4',
descriptions = 'sadece 5 adet sipariş verilebilir', 
unit_price='300'
where id=3
returning*;

--11-Sipariş durumu (kargoda,taşımada vs) değiştiğinde tabloda değişikliği yapacak update komutunu geliştiriniz.
Select* from products_orders;
update orders set statue_id='1'
where id=9
returning*;
-------3 ten 1 e geçti

--12-Kullanıcı sepete ürün eklediğinde oluşacak insert komutunu geliştiriniz.
insert into baskets(customerid)
values (5) ;

--13-Kullanıcı sepetteki ürün adetini artırdığında oluşacak komutu geliştiriniz.
select (po.quantity+1),(po.totalprice*2), cu.id  from baskets b
inner join customers cu
on b.customerid=cu.id
inner join orders o
on o.customerid=cu.id
inner join products_orders po
on po.orderid=o.id
where  po.quantity+1 = po.totalprice*2
group by (po.quantity+1),(po.totalprice*2), cu.id

--14-En az bir sipariş vermiş ancak hiç "MNG Kargo" kullanmamış müşterileri listeleyiniz
select distinct cu.id ,ca.name , cu.name from cargoes ca
inner join orders o
on ca.id=o.cargoid
inner join customers cu
on cu.id= o.customerid
inner join baskets b
on b.customerid=cu.id
where not ca.name = 'mng_kargo'

--15-En az bir adet aynı üründen 10+ sipariş vermiş kullanıcıları ve ürünü listeleyiniz.
select cu.name "Kullanıcı Adı",products.name "Ürün Adı" , po.quantity "Ürün Adeti" from customers cu 
inner join orders o
on cu.id=o.customerid
inner join products_orders po
on o.id=po.productid
inner join products
on po.id=products.id
group by cu.name,products.name , po.quantity
having  po.quantity >= 10

select * from products_orders

select * from baskets

--16-Onaylanmamış ödemeleri listeleyiniz.
select s.name,p.payment_type,p.description from statues s
inner join orders o
on o.statue_id = s.id
inner join payments p
on p.id = o.payment_id
where description = 'Ödeme onaylandı'


--17-En az 2 farklı ülkede adresi olan kullanıcıları listeleyiniz.

select c.name, c.surname, count(*) from customers c
inner join addresses a
on c.address_id = a.id
inner join streets s
on a.street_id =s.id
inner join cities ci
on s.city_id = ci.id
inner join countries co 
on ci.country_id = co.id
group by c.name, c.surname
having count(*)>= 2

--18-EN az 2 farklı şehirde adresi olan ve bu adreslere en az 1 adet sipariş vermiş kullanıcıları listeleyiniz.
select o.id, c.name,c.surname,ci.name from orders o
right join customers c
on o.customerid = c.id
inner join addresses a
on c.address_id = a.id
inner join streets s
on a.street_id =s.id
inner join cities ci
on s.city_id = ci.id
group by c.name,c.surname,ci.name, o.id
order by c.name

--19-Eklenmiş ancak hiç bir siparişte kullanılmamış adresleri listeleyiniz.
select o.id, c.name,c.surname,ci.name from orders o
right join customers c
on o.customerid = c.id
inner join addresses a
on c.address_id = a.id
inner join streets s
on a.street_id =s.id
inner join cities ci
on s.city_id = ci.id
WHERE o.id IS NULL

