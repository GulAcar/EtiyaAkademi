#bir kütüphaneden dosya import etme
#from-kutuphane ismi, import-nesne ismi
#from webdriver_manager.chrome import ChromeDriverManager
#webdriverı kuramadığımız için exe dosyasını ekledik

from selenium import webdriver
from time import sleep
from selenium.webdriver.common.by import By
driver=webdriver.Chrome()
driver.get("https://www.google.com/")
sleep(2)

#html locaters

driver.find_element(By.NAME,"q")
#bunu bir degere atayabiliriz
input= driver.find_element(By.NAME,"q")
input.send_keys("Deneme")
sleep(3)

serachBtn =driver.find_element(By.NAME,"btnK")
serachBtn.click()