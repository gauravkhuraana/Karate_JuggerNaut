Feature: Get the user details

Scenario: Get a specific user details
  * def URL = 'https://gorest.co.in'
  * def PATH = '/public-api/users/'
  * def id = '13'
  * def emailId = 'arora_i_varalakshmi@abernathy-ledner.org'


Given url URL
  And path PATH+id

  When method GET

  Then status 200
  And print response
  And match response.data.email != emailId
  And match response.data.name !contains 'Arora'
