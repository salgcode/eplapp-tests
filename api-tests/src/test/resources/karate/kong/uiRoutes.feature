Feature: UI Route Testing
  Background:
    Given url adminUrl

  Scenario: Route name route4  has paths "/ui" with a tag of ui  and has protocols of http & https.
    * path "/services/ui/routes"
    * method GET
    * status 200
    * match response.data[0].name == "route4"
    * match response.data[0].protocols[0] ==  "http"
    * match response.data[0].protocols[1] == "https"
    * match response.data[0].paths[0] == "/ui"
