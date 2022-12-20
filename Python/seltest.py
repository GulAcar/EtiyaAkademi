#bir kütüphaneden dosya import etme
#from-kutuphane ismi, import-nesne ismi
#from webdriver_manager.chrome import ChromeDriverManager
#webdriverı kuramadığımız için exe dosyasını ekledik

from selenium import webdriver
driver=webdriver.Chrome()
driver.get("https://www.google.com/crome/browser")

#html locaters
driver.find_element()