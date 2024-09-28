Feature: App Routes Test
  Background:
    Given url adminUrl

  Scenario: Route name route2 has a id of "1c6eeeb5-b36a-43a4-95d8-8c8b1a34a9af" and route name route3 has a id of "99bc074a-76f2-468d-8cbb-82bb4398bd5b".
    * path "/services/app/routes"
    * method GET
    * status 200
    * match response.data[0].name == "route2"
    * match response.data[1].name == "route3"
