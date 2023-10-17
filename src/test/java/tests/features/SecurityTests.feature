@Smoke
Feature: Security test for api/token endpoints

  Scenario: Get Valid token
    * url BASE_URL
    And path "/api/token"
    And request {"username": "supervisor","password": "tek_supervisor"}
    When method post
    And print response
    Then status 200
