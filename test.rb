require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

 #Selenium::WebDriver::Chrome::Service.executable_path = File.join(Dir.pwd, 'C:\\Users\\Test\\Desktop\\Cucumber Junit Autommation Frmwork\\chromedriver.exe')
 #driver = Selenium::WebDriver.for :chrome

driver.navigate.to "www.google.co.uk"

if driver.title == "google"
	puts 'Test 1: Pass'
else
	puts 'Test 1: Failed'
end

a=driver.find_element(:name, 'q')
a.send_keys 'Selenium'
a.submit

sleep 3

puts "Page title is #{driver.title}"

if driver.title == 'Selenium'
	puts 'Test 2: Pass'
else 
	puts 'Test 2: Failed'
end 

b=driver.find_element(:id )




