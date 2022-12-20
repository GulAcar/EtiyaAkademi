# bir kütüphaneden dosya import etmek
# kalıp => from {kütüphane-ismi} import {nesne-ismi}
from selenium import webdriver
from selenium.webdriver.common.by import By
from time import sleep
from selenium.webdriver.common.action_chains import ActionChains
# HTML Locators
from selenium.webdriver.common.keys import Keys

driver = webdriver.Chrome()
driver.get("https://www.google.com/")  # chromeda bu linki aç
# # sitenin açılmasını bekle!
# sleep(2) # defensive programming
# input = driver.find_element(By.NAME,"q") # inputu bul
# input.send_keys("Deneme")
# sleep(3)
# searchBtn = driver.find_element(By.NAME,"btnK")
# searchBtn.click()
#--------------------------------------------------------------------------------


from time import sleep
terms_conditions=driver.find_element(By.XPATH,'/html/body/div[1]/footer/div/div/div[2]/ul/li[1]/a')
#driver.execute_script("window.scroll(0,900)")
#driver.execute_script("arguments[0].scrollIntoView()",terms_conditions)
#actionChains= yapılacak aksiyonları sırala ve perform dedğibu işlemler sısaıyla gerçekleştirilsin
#elemana scroll ol= screenshot ak = butona tıkla
#perform

actions= ActionChains(driver)
actions.move_to_element(terms_conditions)
actions.send_keys(Keys.PAGE_DOWN)
actions.click(terms_conditions)
actions.perform()#zincirlenen aksiyonları ,işleme koyar
#clickten önce koyarsak click çalışmaz yani eklenen fonksiyonların sonuna koyulmalı ki 
#fonksiyonları işleme alabilsin
#PG_DWN

#a adet test case verilecek
#bu caseler otomotize edilecek
#sonuçlar console'a yazdırılacak
#ekran görüntüsü günün tarihi ile kaydedilecek
#date.today()
terms_conditions.screenshot(str(date.today())+'(1).png')