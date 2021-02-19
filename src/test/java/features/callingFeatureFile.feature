Feature: Calling another feature file

  Background:
    * def URL = 'https://gorest.co.in/'
    * def PATH = 'public-api/users/'

    * def getUserId = call read('postRequest.feature')
    * def userId = getUserId.response.data.id

  Scenario: Run update on existing created id
    Given url URL
    And path PATH+userId
    And header Authorization = 'Bearer ce8cd7b94a069f5ac4e7fcc48c946353926a69c47b4b7126db66d31791335787'
    And request
    """
    {
   "email":"ghana@yahoo.com",
   "name":"Gaurav Khurana",
   "status":"Inactive",
   "gender":"Female"
}
    """
    When method PUT

    Then status 200
    And print response
    And match response.data.id == userId
    And match response.data.gender == 'Female'
