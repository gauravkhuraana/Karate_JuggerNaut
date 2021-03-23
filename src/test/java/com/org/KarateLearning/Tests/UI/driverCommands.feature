Feature: driver commands for various things
  Scenario: driver various command like maximise, minimise etc

    * driver google
    * driver.maximize()
    * delay(3000)
    * driver.fullscreen()
    * delay(3000)
    * driver.refresh()
    * delay(3000)
    * driver.reload()
    * delay(3000)


  Scenario: checking title for the window
    * driver amazon
    Then print "Title is " , driver.title
    Then match driver.title == 'Online Shopping site in India: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in'
    * delay(4000)


#    * driver.maximize()
#    * delay(3000)
#    Then print "Title is " , driver.title
#    * waitForUrl(amazon)
#    * delay(3000)
