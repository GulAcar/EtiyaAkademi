from selenium import webdriver
from selenium.webdriver.common.by import By
XPATH="//*[@id='navbar']/div/div/div/ul/li[3]/a"
driver=webdriver.Chrome()
driver.get("https://www.kodlama.io/")
driver.maximize_window() # açılan ekranı tam ekran yapmak için
loginBtn=driver.find_element(By.XPATH,loginBtn = driver.find_element(By.XPATH,XPATH))
#login btn texti  giriş yapolmalıdır
loginBtntext=loginBtn.text
#xpath= ilgili elemente html yapısında hangi yollarla erişiriz bunu sağlar
#xpath= her zaman doğru bir yaklaşım olmayabilir
# windows + .
if loginBtntext=="Giriş yap":
    print("test başarılıdır")
else:
    print("test başarısız ")
loginBtn.click()

#attribute= özellik,nitelik,bağlanmak
#websrping