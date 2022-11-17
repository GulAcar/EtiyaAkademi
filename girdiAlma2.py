deger=int(input("Gireceğiniz not miktarini giriniz:"))
sayi=1
if sayi>=0:
    while sayi<= deger:
        print(sayi)
        vize=float( input("Vize:"))
        final= float(input("Final:"))
        ort=(vize*(0.4) +final * (0.6))
        ort1=float(ort)
        print(f"Ortalamanız:{ort1}")
        if ort>=0 and ort<=50:
            print("Kaldınız!!")
        elif ort>50 and ort <=100 :
            print("Geçtiniz")
        else:
            print("Hatalı giris yaptiniz")
        sayi=sayi+1   
else:
    print("Hatalı giriş yaptınız !")         