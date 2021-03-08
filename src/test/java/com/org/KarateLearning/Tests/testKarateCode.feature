
Feature:
  Background:
* def randomNumber = function(arg) { return Math.floor(Math.random() * arg) }
* def email1 = "udzial" + randomNumber(10) + "@test.com"
* print "email1 is --> ", email1
* request  { 'email': '#(email1)' ,     'name': 'Gaurav',    'status': 'Active',     'gender': 'Male'    }
* def URL = 'https://gorest.co.in'
* def PATH = 'public-api/users'



  Scenario: Run the first post scenario
    Given url URL
    And path PATH
    And header Authorization = 'Bearer ce8cd7b94a069f5ac4e7fcc48c946353926a69c47b4b7126db66d31791335787'
    And header Content-Type = 'application/json; charset=utf-8'

    And print email1
    And request
    When method POST