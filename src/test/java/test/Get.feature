Feature: API TESTS

  Background: 
    * url 'https://reqres.in/api/users?page=2'

  Scenario: GET API STATUS
    When method GET
    Then status 200

  Scenario: GET API RESPONSE
    When method GET
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  Scenario: GET API ASSERTIONS 
    When method GET
    And print response
    And match response.data[1].first_name != null	
    And assert response.data.length == 6
    And match response.data[2].id == 9
    And match response.data[3].last_name == 'Fields'
