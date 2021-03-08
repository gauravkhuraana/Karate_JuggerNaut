Feature: Testing the post REquest

  Background:
    * def URL = 'https://gorest.co.in/'
    * path 'public-api/users/'

    # creating refernce for java class
    * def javaClassObject = Java.type('features.javaClassHelper')

    # Calling non Static function of java Class by creating an object
    * def body = new javaClassObject().jsonBody()


    Given url URL
    And header Authorization = 'Bearer ce8cd7b94a069f5ac4e7fcc48c946353926a69c47b4b7126db66d31791335787'
    And header Content-Type = 'application/json; charset=utf-8'

  Scenario: Run the post scenario by getting the body from java



    And request body
    And print 'Request body is ',body

    When method POST

    Then status 200
    And print response
    And print response.data.email
    And print response.code
    And match response.code == 201
    And match response.data.email contains '.com'

    Scenario: Run the Second scenario by sending the response to java function to write
      And request body
      And print 'Request body is ',body

      When method POST

      Then status 200
      And print response
     * javaClassObject.writeToFile(response)


