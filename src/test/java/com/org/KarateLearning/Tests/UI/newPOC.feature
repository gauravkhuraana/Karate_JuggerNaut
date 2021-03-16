
Feature: Testing UI
Scenario: Testing a click button
* configure driver = { type: 'chromedriver', executable:"C:/software/chromedriver_win32_88/chromedriver.exe", showDriverLog: true, addOptions:['--ignore-certificate-errors']  }
* driver "http://automationpractice.com"
* print 'Working...'
*  click("//a[@class='login']")

# * mouse("//a[@class='login']").click()
 #* click("//button[(@id='SubmitLogin')]")