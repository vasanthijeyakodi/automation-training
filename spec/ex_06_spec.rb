require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.navigate .to "https://accounts.google.com/AddSession/identifier?hl=en&continue=https%3A%2F%2Fmail.google.com&service=mail&ec=GAlAFw&flowName=GlifWebSignIn&flowEntry=AddSession"
element = driver.find_element(:name, 'identifier').send_keys 'vasanthijeyakodi@gmail.com'
next_button = driver.find_element(:id, 'identifierNext').click
sleep(3)
pass = driver.find_element(:name, 'password').send_keys '9566534652'
button = driver.find_element(:id, 'identifierNext').click
