Feature: Get a response from postman

  Scenario: Get a sample response from postman

    Given url 'https://postman-echo.com'
    And path 'get'

    When method GET

    Then status 200
    And print response
    And print response.headers.x-forwarded-proto
    And print response.headers.host
    And print response.url
    And match response.headers.x-forwarded-proto == 'https20'

