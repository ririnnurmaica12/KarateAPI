Feature: User wants to check Google URL as GET

 Scenario Outline: Testing valid GET endpoint

    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And def total = get response.total
    And print total
    And assert total == <expectTotal>
    And def data = get response.data
    And print data

   Examples:
   |expectTotal|
   |10         |
