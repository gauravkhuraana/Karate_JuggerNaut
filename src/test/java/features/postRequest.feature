Feature: Testing the post REquest

  Background:
    * def URL = 'https://gorest.co.in'
    * def PATH = 'public-api/users'
    Given url URL

    Scenario: Run the first post scenario

      And path PATH
      And header Authorization = 'Bearer ce8cd7b94a069f5ac4e7fcc48c946353926a69c47b4b7126db66d31791335787'
      And header Content-Type = 'application/json; charset=utf-8'
      And request
      """
   {
    "email": "amjtest@udzaa.com",
    "name": "Gaurav",
    "status": "Active",
    "gender": "Male"
   }

      """

      When method POST

      Then status 200
      And print response
      And print response.data.email
      And print response.code
      And match response.code == 201
      And match response.data.email contains '.com'