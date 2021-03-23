Feature: how navigation works in Karate
  Scenario: forward back and other commands


    * driver google
    * driver.url = amazon
    * delay(5000)
    * driver.back()
    * delay(3000)
    * driver.forward()
    * delay(3000)


