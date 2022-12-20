from datetime import date
from selenium import webdriver
from selenium.webdriver.common.by import By
from time import sleep
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.keys import Keys



driver = webdriver.Chrome()
driver.maximize_window()
driver.get("https://www.kodlama.io/")
#course = driver.find_elements(By.XPATH,"/html/body/div[1]/div/div/div[2]/div[1]/div/div[1]/a/div/div[1]/img") 
course = driver.find_elements(By.XPATH,"//*[@class='course-listing-title']") 
courseNumber = len(course)

if courseNumber == 6:
    print("Kurs sayısı 6'dır.")
else:
    print("Kurs sayısı 6 değildir.")
driver.save_screenshot(str(date.today()) + '(1).png')
sleep(2)
searchBtn = driver.find_element(By.XPATH, "/html/body/div[1]/div/div/div[1]/div[3]/form/div/input")
searchBtn.click()
searchBtn.send_keys("Senior")
x = driver.find_element(By.XPATH,"/html/body/div[1]/div/div/div[2]/div[3]/div/div[1]/a/div/div[2]")
driver.save_screenshot(str(date.today()) + '(2).png')
sleep(5)
x = x.text
if x == "Senior Yazılım Geliştirici Yetiştirme Kampı (.NET)":
    print("Doğru Çalıştı")
else:
    print("Yanlış Cevap")

input()