Feature: Conditional Logic
  Scenario: Ternary operator call
    * def filename = 'abc' == 'abc' ? 'getAllBookings.feature' : 'getSpecificBooking.feature'
    * print ' Hello filename ',filename

  Scenario: Call a feature file
    * def filename = 'abc' == 'abc' ? 'getAllBookings.feature' : 'getSpecificBooking.feature'
    * print 'filename ++ ', filename
    * def result = call read(filename)


  Scenario: With true false
    * def filename = false ? 'getAllBookings.feature' : 'getSpecificBooking.feature'
    * print 'filename ++ ', filename
    * def result = call read(filename)

  Scenario: With using karate call function
    * def response = 404
    * def result = response == 404 ? karate.call('getAllBookings.feature') : {}


  Scenario: Instead of using call read directly using karate.call
    * def response = 404
    * def result = response == 200 ? karate.call('getAllBookings.feature') : karate.call('getSpecificBooking.feature')
    Then print "result... ",result

  Scenario: With responsecode
    * def response = 200
    * def myFun =
    """
      function(){
      return 'Hello'
       }
    """
    # when you dont want to store result use this
    * if (response == 200) myFun()

    # when you want to store results use this
    * def result = response == 200 ? myFun() : {}
    Then print 'Result --- ' , result