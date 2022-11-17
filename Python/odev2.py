

lessonCount =int(input("Kaç adet ders notu girilecek: "))
passedExams =0
failedExams =0
kDers=[]
gDers=[]
for i in range(lessonCount):
    vize=float( input(f"{i+1}. ders için vize notunu giriniz:"))
    final= float(input(f"{i+1}. ders için final notunu giriniz:"))
    ort=float(vize * 0.4)+ (final * 0.6)
    if ort>=0 and ort<=49:
        print("Notunuz: FF,kaldiniz!")
        kDers.append(ort)
        failedExams +=1
    elif ort>=50 and ort <=60 :
        print("Notunuz: DD, geçtiniz")
        gDers.append(ort)
        passedExams +=1
    elif ort>=60 and ort<=70:
        print( "Notunuz: CC, geçtiniz")  
        gDers.append(ort)
        passedExams +=1
    elif ort>=70 and ort<=80:
        print("Notunuz: BB,Geçtiniz!")
        gDers.append(ort)
        passedExams +=1
    elif ort>=80 and ort<=100:
        print(" Notunuz: AA, Geçtiniz")
        gDers.append(ort)
        passedExams +=1
    else:
        print("Hatalı giris yaptiniz")

print(f" {passedExams} adet dersten geçtiniz. {failedExams} adet dersten kaldiniz.")  
print(f"Kalınan ders  notları:{kDers} ")  
print(f"Geçilen ders  notları:{gDers} ") 