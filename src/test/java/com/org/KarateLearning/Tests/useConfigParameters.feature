Feature: to get incidents from service now
  Scenario: to get the incidents by doing a get call
    Given url host
    And header Authorization = call read('classpath:basic-auth.js') { username:#(user) , password:#(password)}
    And path 'api/now/table/incident'
    And params {"sysparam_limit":"1","sysparm_fields":"number,sys_id,category"}

    When  method GET
    Then status 200
    And print response

    Scenario: Using a value from config file which should be called only once
      * print "id from resultConfig " , resultFromConfig.response.data.id
     # * print "Result from all times calling -- ", resultAll
      * print "id  " , resultAll.response.data.id


  Scenario:Checking if callSingle function ran only once
    * print "id is same as last time as its single call" , resultFromConfig.response.data.id
    #* print "Result from all times calling -- ", resultAll
    * print "id will be different now as it will be called evertime " , resultAll.response.data.id
     #* def result = karate.callSingle('getAllBookings.feature')
     # * print 'result is..... ' result