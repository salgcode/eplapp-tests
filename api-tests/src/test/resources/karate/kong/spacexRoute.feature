Feature: SpaceX Route test

  Scenario: Route name "route1" has a id of protocols http & https, service id "d8c1d17a-5c21-43d8-950e-35d2dd1e5afc", has strip path is false and has paths "/spacex".
    * url "http://kong:8001/services/spacex/routes"
    * method GET
    * status 200
    * match response.data[0].name == "route1"
    * match response.data[0].id == "#notnull"
    * match response.data[0].protocols[0] == "http"
    * match response.data[0].protocols[1] == "https"
    * match response.data[0].strip_path == false