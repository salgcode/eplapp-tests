Feature: SpaceXC112 Test
  Background:
    Given url baseUrl


  Scenario: Capsule Serial C112 with an ID dragon1 was launched on "2017-02-19T14:39:00.000Z" and did landing 3 times.
    Given path '/spacex/v3/capsules/C112'

    * method GET
    * status 200
    * print responseStatus
    * match response.capsule_id == "dragon1"
    * match response.original_launch == "2017-02-19T14:39:00.000Z"
    * match response.landings == 3




    Scenario: : Capsule serial C112 mission name "CRS-16 "of flight 72 and mission name 'CRS-20 of flight 91.
      * path '/spacex/v3/capsules/C112'
      * method GET
      * status 200
      * match response.capsule_serial == "C112"
      * match response.missions[1].name == "CRS-16"
      * match response.missions[1].flight == 72
      * match response.missions[2].name == "CRS-20"
      * match response.missions[2].flight == 91

    Scenario: Capsule serial C112 had landing 3, type Dragon 1.1 with a re use count of 2.

      * path '/spacex/v3/capsules/C112'
      * method GET
      * status 200
      * match response.capsule_serial == "C112"
      * match response.landings == 3
      * match response.type == "Dragon 1.1"
      * match response.reuse_count == 2