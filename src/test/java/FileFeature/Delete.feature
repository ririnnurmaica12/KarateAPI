Feature: API delete

  Scenario Outline: Test API delete
    Given url 'https://postman-echo.com/delete'
    And def dataRequest = '<dataRequest>'
    And request data
    When method DELETE
    Then status 200
    And print response
    And match response.data == dataRequest

    Examples:
    |dataRequest |
    |delete ya   |