Feature: Check to open both browser

  Scenario: Open chrome with default chrome
    * configure driver = {type:'chrome'}
    * driver google


    # type tells that which version to pick by default docker version chrome is picked
  # in below case ChromeDriver w3c standard would be picked
  Scenario: open chrome with chromeDriver
    * configure driver = {type:'chromedriver' , executable:'C:\\Software\\chromedriver_win32\\chromedriver.exe'}
    * driver google

    # if we use configure driver then we can define the browser
  Scenario: open firefox with geckoDriver
    * configure driver = {type:'geckodriver' , executable:'C:\\Software\\geckodriver-v0.28.0-win64\\geckodriver.exe'}
    * driver google