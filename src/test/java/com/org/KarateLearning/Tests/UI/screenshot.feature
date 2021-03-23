Feature: How to take a screenshot in karate

Background:
  * configure afterScenario =
  """
  function()
  {
  if(karate.log.errorMessage)
  {
  driver.screenshot();
  }
  }
  """

  Scenario: Take screenshot
    * driver google
    * screenshot()

  Scenario: Take screenshot after any action
    * driver google
    * delay(2000).screenshot()

  Scenario: Take screenshot for a particular element
    * driver google
    * waitFor("//img[@alt='Google']")
    * screenshot("//img[@alt='Google']")

  Scenario: Take screenshot on failure
    * driver google
    * click('#abc')
