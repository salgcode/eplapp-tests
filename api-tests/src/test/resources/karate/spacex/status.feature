Feature: Health Test

  Background:
    Given url baseUrl
    Given path '/spacex/health'

  Scenario: Status Check

    When method GET
    Then status 200
    And match $.status == "UP"

