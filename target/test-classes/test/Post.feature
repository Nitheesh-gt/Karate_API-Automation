Feature: API TESTS

  Background: 
    * url 'https://reqres.in/api/'
    * header Accept = 'application.json'
    Given path '/users' 

  Scenario: POST API TEST
 		And request {"name": "morpheus","job": "leader"}
    When method POST
    Then status 201
    And print response

  Scenario: GET API RESPONSE
  	And request {"name": "morpheus","job": "leader"}
    When method POST
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  Scenario: POST API ASSERTIONS
  	And request {"name": "morpheus","job": "leader"}
    When method POST
    And match response == {"name": "morpheus","job": "leader","id": "#string","createdAt":"#ignore"}
    And print response
	
	Scenario: POST API ASSERTIONS REQUEST JSON
    And def requestBody = read('postRequest.json')
    And request requestBody
    And print requestBody
    And set requestBody.job = "engineer"
    And print requestBody
    When method POST
    And print response
    
  Scenario: POST API ASSERTIONS RESPONSE JSON
  	And def requestBody = read('postRequest.json')
    And request requestBody
    When method POST
    And print response
    And def reponseFile = read('postResponse.json')
    And match response == reponseFile

  
