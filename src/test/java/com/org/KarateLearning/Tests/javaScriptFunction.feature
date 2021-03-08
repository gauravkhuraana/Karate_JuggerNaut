# Created by Gaurav khurana @ www.udzial.com
Feature: Call a javascript inside file

  Scenario Outline: Data driven scenario via outline
    * url 'http://dummy.restapiexample.com'
    * path 'api/v1/create'


    Given request {"name":<name>,"salary":<salary>,"age":<age>}

    When method POST

    Then status 200
    And print "Actual response is ",response
    And print "response data is ",response.data
    * def res = response.data

    * def len =
    """
    function(arg)
    {
    return arg.length;
    }
    """

    * def length = call len res

    Then print "Length of the response is ", length


    Examples:
      |name|age|salary|
      |Gaurav|30|9900|


    Scenario: Function with 2 parameters in karate
      * def sum =
      """
      function(a,b) {
      return a+b;
      }
      """
      # wrong way of calling if multiple parameters
      #* def result = call sum(1,2)

      * def result = sum(1,2)
      Then print result
      * assert sum(1,2) == 3
