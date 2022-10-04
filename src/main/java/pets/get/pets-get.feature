Feature: Get find pet by ID

  Scenario: Get list pet by ID
    * def jsonResponse = read ('../json/list_pets.json')
    Given url "https://petstore.swagger.io/v2/pet/1234567143"
    When method get
    Then status 200
    And match $ == read ('../json/list_pets.json')