Feature: API TESTS

  Background: 
    Given url 'https://reqres.in/api/users/2'

  Scenario: PUT API TEST
		And request {"name":"morpheus","job":"zion resident"}
    When method PUT
    Then status 200
    And print response
