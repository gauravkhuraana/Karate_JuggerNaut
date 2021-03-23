Feature:
  Rerun scenario on failure
  Background:
    * configure afterScenario =
    """
    function(){
    var info = karate.info;
    karate.log(info);
    if(info.errorMessage)
    {
    karate.call('rerunFeatureFile.feature')
    }
    }
    """


  Scenario: Open a website and click on locator with wrong selector
    * configure driver = { type: 'chromedriver', executable:'C:\\Software\\chromedriver_win32\\chromedriver.exe', showDriverLog: true, addOptions:['--ignore-certificate-errors']  }
    Given driver 'https://www.gauravkhurana.in'
    Then maximize()
    Given driver 'https://udzial.com'
    And waitFor('.abc')