require 'date'
require 'selenium-webdriver'

target_page = 'http://item.rakuten.co.jp/enetroom/560072/'
start_time = Time.new(2016, 9, 4, 16, 30, 0, "+09:00")
user_email = 'nantokakantoka@gmail.com'
user_password = 'nantokakanota'

driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 6000 # 秒
driver.navigate.to target_page

loop do
  break if Time.now >= start_time
end

driver.find_element(:class,'rCartBtn').click
driver.find_element(:name,'submit').click

driver.find_element(:name,'u').send_keys(user_email)
driver.find_element(:name,'p').send_keys(user_password)
driver.find_element(:name,'login_submit').click
#driver.find_element(:name,'commit').click