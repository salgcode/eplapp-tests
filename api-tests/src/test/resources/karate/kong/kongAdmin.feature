Feature: Kong Service Admin test
  Background:
    Given url adminUrl



  Scenario: Host name "app" is running on port 8080 with a protocol pf http with a retries of 6, write timeout of 6000, id of "1bb14aae-2250-4934-8f8a-916d3cf29ee5" and connect time out is 60000.
    * path "/services"
    * method GET
    * status 200
    * match response.data[0].host == "app"
    * match response.data[0].port == 8080
    * match response.data[0].protocol == "http"
    * match response.data[0].write_timeout == 60000

