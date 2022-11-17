#Arrays

krediler=["Hızli kredi","Halkbank kredisi","İhtiyac kredisi"]
print(krediler)
print(krediler[0])
print(len(krediler))
krediler[0]="Cabuk kredi"
print(krediler)


#Döngüler
for kredi in krediler:
    print(kredi)

for i in range(10):
    print(i)

for i in range(len(krediler)):
    print(krediler[i])
    
for kredi in krediler:
    print("<option>"+ kredi +"<option>")