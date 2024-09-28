Feature: EPL winner 1994
  Background:
    Given  url baseUrl

  Scenario: Confirm in season 1994,  Manchester United has won the Premier League with a points 92 with a goal difference of  42.
    * path '/epl/winners'
    * param season = 1994
    * method GET
    * status 200
    * match response[0].season == 1994
    * match response[0].ranking == 1
    * match response[0].team == "Manchester Utd"
    * match response[0].points == 92
    * match response[0].gd == 42
