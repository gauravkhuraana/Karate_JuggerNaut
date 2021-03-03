# all Assertion in Karate parctise
  # by Gaurav Khurana - www.udzial.com

Feature: Assertion

  Background:
    * def json = read('../resources/sampleResposneReqRes.json')
    * url 'https://reqres.in/api/users'
    
  Scenario: assertion scenarios
    Given url 'https://reqres.in/api/user?page=2'
    When method GET
    Then status 200
    And print 'Response is --- ', response
    And match $.data[0].name == 'sand dollar'
    Then print response.data[0].name
    And print "Total value is ",response.total
    # total
    And match response.total == 12
    # for true false use assert
    And assert response.total > 10

    And match response.data[0].id == '#number'
    And match response.student == '#notpresent'
    And match response.data[0].year == '#number'
    And match response.data[*].id contains [7,8,9]
    And match response..id contains [7,8,9]


    #match response with external file
    #jsonAraay elements serial matters
    And match response == json

    Scenario: Independent Scenario
    * def foo = {hello:'world' , learn:'karate'}
    * def test = {learn:'karate',hello:'world'}
    #json Object elements serial does not matter
    * match foo == test
    
    * def a = 'hello'
    * def b = 'hello'
      And assert a == b

    # matching not equal to
    * def test2 = {learn:'karate'}
      * match foo != test2

        # below is wrong syntax for equality use match
        # assert use for evaluating an expression to true or false
        # * assert foo == test



  Scenario: Get user details
    * url 'http://dummy.restapiexample.com/api/v1/create'
    * def expectedOutput = read('../resources/param2FGetUserReqRes.json')
    Given request {"name":"Test","salary":"123","age":"23"}
    When method POST
    Then status 200
    And print 'User details printing -- >' , response
    And match response == expectedOutput
    And match response contains {"salary":"success"}
    And match response.status contains "succes"
    And match response.status !contains "succes"
    * def data = [1,2,3]

      # if one parameter write directly
    And match data !contains 3

    # if there are 2 parameter
    And match data contains [5,6]

    # if you dont write [ then only last parameter is considered,
      # only 6 is considered
    And match data contains 5,6






