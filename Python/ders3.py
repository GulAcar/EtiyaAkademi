file= open("employes.txt", "w")

emplyCount =int(input("Kaç tane çalışan bilgisi girilecek "))
emply=[]
for i in range(emplyCount):
    ad=input(f"{i+1}. Çalışan adı:")
    soyad=input(f"{i+1}. Çalışan soyadı:")
    Maaş= float(input(f"  Aldığı maaş:"))
print(f" Çalışanlar: {emply} ")
file.write()
file.close()
