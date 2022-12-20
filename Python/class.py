class Math:
    def sum(self,a,b):
        #self classların ilk parametre olarak atnır claasın kendini ifade eder
        # self. diyerek parametre çağırabiliyoruz(javada this)
        return a+b
    def multiply(a,b):
        return a*b
    
#nesne ve obje farkı
mathLibrary=Math()#instance obje olışturma
mathLibrary2=Math()
sum=mathLibrary.sum(10,20)
multiply=mathLibrary.multiply(10,20)

print(sum)
print(multiply)

#selenium ve pytest

