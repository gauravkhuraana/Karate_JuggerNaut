function fun()
{


 var config = {


    host: 'https://dev78121.service-now.com/',
    user: 'admin',
    pass: 'Xerox@123',
    driver: { type: 'chromedriver', executable:'C:/software/chromedriver_win32_88/chromedriver.exe', showDriverLog: true, addOptions:['--ignore-certificate-errors']  }


 };
/* var result = karate.callSingle('postDynamicEmailId.feature')
 config.resultFromConfig= result

 var resultAll = karate.call('postDynamicEmailId.feature')
 config.resultAll = resultAll*/
  return config;
}