Feature: Get the user details

  Scenario Outline: Get a specific user details
    * def URL = 'https://gorest.co.in'
    * def PATH = '/public-api/users/'
    * def emailId = 'arora_i_varalakshmi@abernathy-ledner.org'
    * def ID = <id>


    Given url URL
    And path PATH+ID

    When method GET

    Then status 200
    And print response
    And match response.data.email == emailId
    And match response.data.name contains 'Arora'

    Examples:
    |id|
    |110|
    |18|