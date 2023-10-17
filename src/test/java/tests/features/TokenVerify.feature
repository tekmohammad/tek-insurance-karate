Feature: Token Verify

  Scenario: Validate /api/token/verify invalid token
    Given url BASE_URL
    And path "/api/token/verify"
    And param token = "Invalid Token"
    And param username = "invalid username"
    When method get
    Then status 400
    And print response
    And match response contains {"errorMessage" :  "Token Expired or Invalid Token"}