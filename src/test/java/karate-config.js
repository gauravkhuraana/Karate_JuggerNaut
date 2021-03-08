function fun()
{
 var config = {
    host: 'https://dev78121.service-now.com/',
    user: 'admin',
    pass: 'Xerox@123'

 };
 var result = karate.callSingle('postDynamicEmailId.feature')
 config.resultFromConfig= result

 var resultAll = karate.call('postDynamicEmailId.feature')
 config.resultAll = resultAll
  return config;
}