Feature: API TESTS

  Background: 
    Given url 'https://reqres.in/api/users/2'

  Scenario: DELETE API TEST
    When method DELETE
    Then status 204
    And print response
