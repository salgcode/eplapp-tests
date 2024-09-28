Feature: Most goals by the team in different season.
  Background:
    Given url baseUrl

  Scenario: Confirm that in Season 1995, Manchester United has score most goals of 9 against Ipswich Town in week 32 on 4th March.
    * path "epl/most-goals"
    * method GET
    * status 200
    * match response[0].season == 1995
    * match response[0].team == "Manchester Utd"
    * match response[0].gf == 9
    * match response[0].opponent == "Ipswich Town"
    * match response[0].wk == 32
    * match response[0].matchDate == "1995-03-04"

