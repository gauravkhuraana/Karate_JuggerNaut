Feature: Concept of global variable in Karate
  Background:
    * def variableScope = 'Global in this file'

    Scenario: i am scenario 1
      * def variableScope = ' i will override outside one'
      * print variableScope
      * print "I am picked from config file, no one can change  --> ",user
      * user='seconduser'
      * print "Someone changed my value but not global value --> ",user


      Scenario: I am scenario 2
        * print variableScope
        * print "I told you i am read before all scenarios --> ",user