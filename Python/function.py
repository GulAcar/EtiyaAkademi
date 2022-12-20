top=1+2
sayi1=1
sayi2=2
#toplam=topla(sayi1,sayi2)
#toplam2=topla()

#def
#fonk çagrılırken verilmesi istenilen degerler =parametre

def topla(sayi1,sayi2):
   # toplam=sayi1+sayi2
  # print(toplam)
#çagırmadıgımız için çıktı vermedi
#topla(5,6)#cagırdık artık bu ıkı sayının toplamını alabiliriz


    toplam=sayi1+sayi2
    print(toplam)
    return toplam
product1=10
product2=25
totalPrice=topla(product1,product2)
print(totalPrice)


def passedOrtNot(note):
    if note<50:
        print("kaldınız")
        return False
    else:
        print("gectınız")
        return True
