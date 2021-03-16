

Feature: Testing UI
@Waits
Scenario: Testing a click button
  # executable:"chromeDriver", showDriverLog: true, addOptions:['--ignore-certificate-errors']
  * configure driver = { type: 'chrome'  }
 # * configure driver = { type: 'chromedriver', executable:"C:/software/chromedriver_win32_88/chromedriver.exe", showDriverLog: true, addOptions:['--ignore-certificate-errors']  }
  * driver "http://automationpractice.com"
#* driver.send({"method":"Browser.setWindowBounds","params":{"windowId":1,"bounds":{"windowState":"minimized"}}})
#* driver.maximize()
#* print 'Working...'
#* retry(10).waitFor("(//div[@id='block_top_menu']//a[@title='T-shirts'])[2]")
#* waitForText( "//a[@class='login']",'Sign in')
#* click("//a[@class='login']")
#* screenshot()
#* input('[name="email_create"]','test@gmail.com')
#* click("//*[normalize-space()='Create an account']")
#* delay(3000).screenshot()

# * mouse("//a[@class='login']").click()
 #* click("//button[(@id='SubmitLogin')]")


#Script	Description
#waitFor(#id)	               This is typically used for the first element you need to interact with on a freshly loaded page
#retry(10).waitFor(#id)	     like the above, but temporarily over-rides the settings to wait for a longer time.
#waitForUrl(url)	         for convenience, this uses a string contains match – so for example you can omit the http/https prefix
#waitForAny(‘#id’,’#tile’)	handle if an element may or may not appear
#waitUntil(expression)	wait until any user defined JavaScript statement to evaluate to true in the browser
#waitForText(‘#id’,’appeared’)	frequently needed short-cut for waiting until a string appears – and this uses a “string contains” match for convenience
#waitForEnabled(‘#id’,’4′)	wait until a certain number of rows of tabular data is present