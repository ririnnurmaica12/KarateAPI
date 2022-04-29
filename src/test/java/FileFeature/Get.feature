Feature: User wants to check Google URL as GET

  Scenario: Testing valid GET endpoint

    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And def total = get response.total
    And print total
    And assert total == 11
    And def data = get response.data
    And print data
