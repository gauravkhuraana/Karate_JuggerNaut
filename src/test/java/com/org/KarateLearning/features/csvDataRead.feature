Feature: Get the user details

  Scenario Outline: Get a specific user details via data driven
    * url 'http://dummy.restapiexample.com'
    * path 'api/v1/create'


    Given request {"name":<name>,"salary":<salary>,"age":<age>}

    When method POST

    Then status 200
    And print response

    Examples:
    |read('testdata/test.csv')|