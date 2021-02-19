Feature: to get incidents from service now
  Scenario: to get the incidents by doing a get call
    Given url host
    And header Authorization = call read('../basic-auth.js') { username:#(user) , password:#(password)}
    And path 'api/now/table/incident'
    And params {"sysparam_limit":"1","sysparm_fields":"number,sys_id,category"}

    When  method GET
    Then status 200
    And print response