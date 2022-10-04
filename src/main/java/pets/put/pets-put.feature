Feature: Put modify an existing pet

  Scenario: Put modify an existing pet
    Given url "https://petstore.swagger.io/v2/pet"
    And request { "id": 1234567890,"name": "Tag_1", "photoUrl": "www.google.com/lazy.png" }
    When method put
    Then status 200