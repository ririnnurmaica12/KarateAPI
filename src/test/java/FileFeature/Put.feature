Feature: Put API

  Scenario Outline: Put data API
    Given url 'https://reqres.in/api/users'
    And def bodyJson =
    """ {
    "name": "<name>",
    "job": "<job>"
    }
    """
    And request bodyJson
    When method PUT
    Then status 200
    And print response

    Examples:
    |name|job|
    |ri1 |test1|
