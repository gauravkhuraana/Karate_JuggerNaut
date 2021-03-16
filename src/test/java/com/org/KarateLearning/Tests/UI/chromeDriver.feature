Feature: useAutomationExtension test
  Scenario: try useAutomationExtension with Chrome
    * def startUrl = "https://www.google.com/"
    * def browser = "chrome"
    * def type = "chromedriver"
 #   * def executable = "./executables/" + type + ".exe"
    #* def driverConfig = { type: #(type), showDriverLog: true, addOptions: [ "--window-size=1600,900", "--disable-extensions" ], executable: #(executable), webDriverSession: { desiredCapabilities: { browserName: #(browser), "goog:chromeOptions": { useAutomationExtension: false } } } }
#    * configure driver = { type: 'chromedriver', executable:#(executable), showDriverLog: true, addOptions:['--ignore-certificate-errors']  }
    * configure driver = { type: 'chromedriver', executable:'chromedriver.exe', showDriverLog: true, addOptions:['--ignore-certificate-errors']  }

#    * configure driver = { type: 'chromedriver', executable:"C:/software/chromedriver_win32_88/chromedriver.exe", showDriverLog: true, addOptions:['--ignore-certificate-errors']  }

   # * configure driver = driverConfig
    Given driver startUrl
    Then match driver.url != startUrl