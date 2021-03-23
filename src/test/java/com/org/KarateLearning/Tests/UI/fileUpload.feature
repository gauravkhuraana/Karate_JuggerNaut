Feature: Do a file upload


  Scenario:File upload from local directory

    * driver 'http://the-internet.herokuapp.com/upload'
    * waitFor('#file-upload')
    * delay(3000)

    * driver.inputFile('#file-upload','ISKCON-Temple-Indore.jpg')
    * delay(1000)
    * screenshot()

    * waitFor('.button')
    * click('.button')
    * delay(1000)


    * waitForText('#uploaded-files','ISKCON-Temple-Indore.jpg')
    * screenshot()


  Scenario:File upload from main directory

    * driver 'http://the-internet.herokuapp.com/upload'
    * waitFor('#file-upload')
    * delay(3000)

    * driver.inputFile('#file-upload','file:ISKCON-Temple-Indore_1.jpg')
    * delay(1000)
    * screenshot()

    * waitFor('.button')
    * click('.button')
    * delay(1000)


    * waitForText('#uploaded-files','ISKCON-Temple-Indore_1.jpg')
    * screenshot()


  Scenario:File upload from a different folder

    * driver 'http://the-internet.herokuapp.com/upload'
    * waitFor('#file-upload')
    * delay(3000)

    * driver.inputFile('#file-upload','file:src/test/java/resources/ISKCON-Temple-Indore_2.jpg')
    * delay(1000)
    * screenshot()

    * waitFor('.button')
    * click('.button')
    * delay(1000)


    * waitForText('#uploaded-files','ISKCON-Temple-Indore_2.jpg')
    * screenshot()



