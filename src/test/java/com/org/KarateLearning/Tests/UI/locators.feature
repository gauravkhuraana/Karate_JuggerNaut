Feature: Locators in KArate

  Scenario: Wildcard locators
    Given driver amazon
    And driver.maximize()

    # here a is the link <a and Amazon pay is the text
    And waitFor('{a}Amazon Pay')
    And delay(1000)

          # here {} is blank so no tags to be searched but text should be 'Home & Kitchen'
    And waitFor('{}Home & Kitchen')
    And delay(1000)

      #Wildcard Characters ^ is wildcard like *
    And waitFor('{^}your ')
    And delay(1000)

      #With parent tags can be given with {}
    And waitFor('{^div/h2}picks for your')
    And delay(1000)

     #Click on Fashion which is left of New Releases
    And leftOf('{^a}Release').find('{^a}Fashion').click()
    And delay(1000).screenshot()

    And driver.back()

    And rightOf('{a}Fashion').find('{^a}Release').click()
    And delay(1000).screenshot()


    Scenario: try above and below scenarios
    Given driver 'https://github.com/intuit/karate/wiki'
     #The link Above this link
      * above('{}Community News').click
      * delay(4000).screenshot()
      * driver.back()
     # the link below this link
      * below('{}Community News').click
      * delay(4000).screenshot()

