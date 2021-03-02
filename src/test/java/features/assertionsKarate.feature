Feature: Assertion

  Background:
    * def json = read('../resources/responseFile.json')
    
  Scenario: assertion scenarios
    Given url 'https://reqres.in/api/user?page=2'
    When method GET
    Then status 200
    And print 'Response is --- ', response
    And match $.data[0].name == 'sand dollar'
    Then print response.data[0].name
    And match response.data[0].id == '#number'
    And match response.student == '#notpresent'
    And match response.data[0].year == '#string'