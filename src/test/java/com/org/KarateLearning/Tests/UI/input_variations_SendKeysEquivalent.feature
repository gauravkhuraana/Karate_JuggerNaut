Feature: Open Google

  Scenario: Enter some search text and verify results


    Given driver google
    And waitFor('.gLFyf.gsfi')
    * delay(1000)

    # Put a single term in box
    And input('.gLFyf.gsfi','www.udzial.com')
    #And clear('.gLFyf.gsfi')

    #Try multiple terms to be sent in  box
    And input('.gLFyf.gsfi', ['gaurav', 'khurana', Key.ENTER])
    #And clear('.gLFyf.gsfi')

    # Multiple values with a time gap in between
    And input('.gLFyf.gsfi',  ['gaurav', 'khurana', Key.ENTER],200)
    And clear('.gLFyf.gsfi')

    # Single values with a time gap in between characters
    And input('.gLFyf.gsfi', 'Hare Krishna',200)

    #Input to whole page
    And input('body',Key.ESCAPE)

    #Special keys Key.ALLINCAPS
    And input(".gLFyf.gsfi" , "Hari Bol" + Key.ENTER)
    #All Special keys
    #https://intuit.github.io/karate/karate-core/src/main/java/com/intuit/karate/driver/Key.java



