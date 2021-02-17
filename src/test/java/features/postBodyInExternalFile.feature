Feature: Get body from external file
  Background:
    * def URL = 'https://gorest.co.in/'
    * def PATH = 'public-api/users/'
    * def filepath = '../resources/inputFile.json'
    Given url URL
    And path PATH
    And header Authorization = 'Bearer ce8cd7b94a069f5ac4e7fcc48c946353926a69c47b4b7126db66d31791335787'


    Scenario: A post request using hardcoded request body
      And request
      """
{
  "email":"tester3@udzial.com",
  "name":"gaurav khurana",
  "status":"Active",
  "gender":"Male"
}
      """
      When method POST
      Then status 200
      And print response
      And match response.code == 201

  Scenario: A post request using external file
    And request read(filepath)

    When method POST

    Then status 200
    And print response
    And match response.code == 201

  Scenario: A post request using tables
    And table t1
    |email|name|status|gender|
    |"tester121@udzial.com"|"Gaurav khurana"      |"Active"|"Male"|
    |"testerSoftware@udzial.com"|"Samriddhi khurana"      |"Active"|"Female"|


    #   |{"email":"tester121@udzial.com","name":"gaurav khurana","status":"active","gender":"male"}|
    And request t1[1]

    When method POST

    Then status 200
    And print response
    And match response.code == 201
