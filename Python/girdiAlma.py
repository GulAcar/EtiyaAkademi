
vize=float( input("Vize:"))
final= float(input("Final:"))
ort=(vize*(0.4) +final * (0.6))
ort1=float(ort)
print(f"Ortalamanız:{ort1}")
if ort>=0 and ort<=49:
    print("Notunuz: FF,kaliniz!")
elif ort>=50 and ort <=60 :
    print("Notunuz: DD")
elif ort>=60 and ort<=70:
    print( "Notunuz: CC")  
elif ort>=70 and ort<=80:
    print("Notunuz: BB,Geçtiniz!")
elif ort>=80 and ort<=100:
    print(" Notunuz: AA, Geçtiniz")
else:
    print("Hatalı giris yaptiniz")


#! kullanıcıdan vize ve final notları alacak.
#! vize %40  final %60 etkili olacak
#! vize ve final notları 50.5 gibi ondalıklı sayılar olabilir
#! uygulama ortalamayı hesaplayacak ve ortalamaya göre
#! 0-49 FF
#! 50-60 DD
#! 60-70 CC
#! 70-80 BB
#! 80-100 AA
#! not ortalamasını ve not harfini kullanıcıya gösterecek programı kodlayınız.    