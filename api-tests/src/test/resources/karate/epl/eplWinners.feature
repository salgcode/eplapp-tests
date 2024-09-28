Feature: EPL winners for different season.
  Background:
    Given url baseUrl

  Scenario: In season 1995 Blackburn Rovers have won the Premier League with a points of 89 and the goal difference of 41.
    * path '/epl/winners'
    * method GET
    * status 200
    * def winner_1995 = karate.filter(response, function(x){return x.season == '1995'})
    * match winner_1995[0].season == 1995
    * match winner_1995[0].team == "Blackburn"
    * match winner_1995[0].ranking == 1
    * match winner_1995[0].points == 89
    * match winner_1995[0].gd == 41

    Scenario: In season 1999 Manchester United has won the Premiere League with a total points of 79 and a goal difference of 43.
      * path '/epl/winners'
      * method GET
      * status 200
      * def winner_1999 = karate.filter(response, function(x){return x.season == '1999'})
      * match winner_1999[0].season == 1999
      * match winner_1999[0].team == "Manchester Utd"
      * match winner_1999[0].points == 79
      * match winner_1999[0].gd == 43
