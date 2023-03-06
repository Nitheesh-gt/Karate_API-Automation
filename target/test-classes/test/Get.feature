Feature: API TESTS

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application.json'

  Scenario: GET API STATUS
    Given path '/users?page=2'
    When method GET
    Then status 200

  Scenario: GET API RESPONSE
    Given path '/users'
    And param page = 2
    When method GET
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  Scenario: GET API ASSERTIONS
    Given path '/users?page=2'
    When method GET
    And print response
    And match response.data[1].name != null	
    And assert response.data.length == 6
    And match response.data[2].id == 3
    And match response.data[3].color == '#7BC4C4'
