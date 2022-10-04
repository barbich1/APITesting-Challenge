Feature: Post add a new pet to the store

  Scenario: Post add a new pet
    Given url "https://petstore.swagger.io/v2/pet"
    And request { "id": 123456710,"name": "Lazy Challenge Edicion", "photoUrl": "www.google.com/lazy.png" }
    When method post
    Then status 200