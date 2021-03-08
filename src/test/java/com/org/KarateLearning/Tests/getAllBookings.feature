Feature: to get all bookings

  Scenario: to ping on the site
    Given url 'https://restful-booker.herokuapp.com'
    And path '/ping'
    When method GET
    Then status 201
    And print response

  Scenario: to get all the bookings present on the site
    Given url 'https://restful-booker.herokuapp.com'
    And path '/booking'
    When method GET
    Then status 200
    And print response