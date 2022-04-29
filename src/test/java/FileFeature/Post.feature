Feature: Post API

  Scenario Outline: Post data API
    Given url 'https://reqres.in/api/users'
    And def bodyJson =
    """ {
    "name": "<name>",
    "job": "<job>"
    }
    """
    And request bodyJson
    When method POST
    Then status 201
    And print response
    And match response.id == '#present'
    And match response.name == bodyJson.name
    And match response.job == bodyJson.job
    And match response.createdAt == '#notnull'

    Examples:
    |name | job|
    |ri1  |test|
    |test |    |





