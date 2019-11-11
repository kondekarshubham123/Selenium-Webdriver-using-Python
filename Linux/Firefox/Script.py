from selenium import webdriver
from selenium.webdriver.common.keys  import Keys
import time
#User Credential
print('Welcome to Automated Script for FaceBook Login Script')
print('-----------------------------------------------------')
Unme = input('Enter User Name: ')
Pwd = input('Input Password: ')

brower = webdriver.Firefox()
website_URL ="https://www.google.co.in/"
brower.get(website_URL)
search_field = brower.find_element_by_css_selector('input.gLFyf.gsfi')
search_field.send_keys("Facebook")
search_field.submit()
time.sleep(3)
lists= brower.find_elements_by_class_name("g")
link_name = brower.find_elements_by_partial_link_text("Facebook - Log In or Sign Up")
brower.implicitly_wait(5)
link_name[0].click()
brower.implicitly_wait(10)
time.sleep(3)
usr_ele=brower.find_element_by_name("email")
pwd_ele=brower.find_element_by_name("pass")
usr_ele.send_keys(Unme) #Email_ID                
pwd_ele.send_keys(Pwd) #Password
brower.find_element_by_id("loginbutton").click()