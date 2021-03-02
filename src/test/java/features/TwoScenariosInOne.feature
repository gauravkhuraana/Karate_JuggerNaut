Feature: to use data across scenario you can use one scenario instead of depending on global variables

  Scenario: to ping on the site
    Given url 'https://gorest.co.in'
    And path 'public-api/users'
    When method GET
    Then status 200
    And print "response is ---> " ,response
    And print "Here is the data from the resonse of API " , response.data[0].id

    Given path 'public-api/users/' + response.data[0].id
    When method GET
    Then status 200
    And print response