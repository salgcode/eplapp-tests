Feature: Epl winner 2012.
  Background:
    Given url baseUrl

  Scenario: Confirm that in 2012 Manchester City has won the title playing 38 games with a goal difference of 64 and total points of 89.
    * path '/epl/winners'
    * param season = 2012
    * method GET
    * status 200
    * match response[0].season == 2012
    * match response[0].ranking == 1
    * match response[0].gd == 64
    * match response[0].points == 89
