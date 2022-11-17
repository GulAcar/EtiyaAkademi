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
    
#derste yapılan
lessonCount=0
while lessonCount<= 0 or lessonCount >10:
    lessonCount =int(input("Kaç adet ders notu girilecel"))
passedExams =0
failedExams =0
for i in range(lessonCount):
    lessonExam1= float(input(f"{i+1}. ders için vize notunu giriniz:"))
    lessonExam2= float(input(f"{i+1}. ders için final notunu giriniz:"))          
    totalExamNote=(lessonExam1 * 0.4)+ (lessonExam2 * 0*6)
    if totalExamNote >=50:
        passedExams +=1
    else:
        failedExams+=1    
print(f" {passedExams} adet dersten geçtiniz. {failedExams} adet dersten kaldiniz.")        