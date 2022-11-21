file= open("employes.txt", "a+")
emply=[]
try :
    emplyCount =int(input("Kaç tane çalışan bilgisi girilecek "))
    for i in range(emplyCount):
        ad=input(f"{i+1}. Çalışan adı:")
        emply.append(ad)
        soyad=input(f"{i+1}. Çalışan soyadı:")
        emply.append(soyad)
        maas= float(input(f"  Aldığı maaş:"))
        maass=str(maas)
        emply.append(maas)
        emplys=(f"{i+1} {ad} + {soyad} + {maas} ")
        file.writelines(emplys)
        
        
except:
    print("hatalı giriş yapıldı")


file.close()



#! Şirket çalışanları verilerini tutan dosya oluşturulacak----
#! Kullanıcıdan çalışan sayısı alınacak ----
#! Çalışan sayısı kadar isim,soyisim,maaş bilgisi alınacak------
#! Dosyadaki her satıra "Ad Soyad - Maaş" kalıbında çalışan bilgileri eklenecek.-
#! Programın sonunda bu dosyadan bilgileri satır satır okuyup listeleyecek kod yazılacak. 
#! Eklenen çalışanlar mevcut çalışanları silmeyecek, üzerine yazılacak