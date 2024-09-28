Feature: Roadster test
  Background:
    Given url baseUrl

  Scenario: Sports car name "Elon Musk's Tesla Roadster",  launched on "2018-02-06T20:45:00.000Z" has a launch mass of  1350kg, norad id of 43205, travelling at a speed of 109278.66672000001kph.
    Given path '/spacex/v3/roadster'
    * method GET
    * status 200
    * match response.name == "Elon Musk's Tesla Roadster"
    * match response.launch_date_utc == "2018-02-06T20:45:00.000Z"
    * match response.launch_mass_kg == 1350
    * match response.norad_id == 43205
    * match response.speed_kph == 109278.66672000001

  Scenario:  Sports car name "Elon Musk's Tesla Roadster" travelling at a longitude of 316.9315419980089 at a mars distance of 66007564.59111287 in km and earth distance from it is 57928338.62299857 in km.
    Given path '/spacex/v3/roadster'
    * method GET
    * status 200
    * match response.name == "Elon Musk's Tesla Roadster"
    * match response.longitude == 316.9315419980089
    * match response.mars_distance_km == 66007564.59111287
    * match response.earth_distance_km == 57928338.62299857


  Scenario: Sports car name "Elon Musk's Tesla Roadster" travelling with a inclination of 1.07588256753148 has flickr image "https://farm5.staticflickr.com/4615/40143096241_11128929df_b.jpg", wikipedia link is "https://en.wikipedia.org/wiki/Elon_Musk%27s_Tesla_Roadster", and the details of it is "Elon Musk's Tesla Roadster is an electric sports car that served as the dummy payload for the February 2018 Falcon Heavy test flight and is now an artificial satellite of the Sun. Starman, a mannequin dressed in a spacesuit, occupies the driver's seat. The car and rocket are products of Tesla and SpaceX. This 2008-model Roadster was previously used by Musk for commuting, and is the only consumer car sent into space."
    Given path '/spacex/v3/roadster'
    * method GET
    * status 200
    * match response.name == "Elon Musk's Tesla Roadster"
    * match response.inclination == 1.07588256753148
    * match response.flickr_images[0] == "https://farm5.staticflickr.com/4615/40143096241_11128929df_b.jpg"
    * match response.wikipedia == "https://en.wikipedia.org/wiki/Elon_Musk%27s_Tesla_Roadster"
    * match response.details == "Elon Musk's Tesla Roadster is an electric sports car that served as the dummy payload for the February 2018 Falcon Heavy test flight and is now an artificial satellite of the Sun. Starman, a mannequin dressed in a spacesuit, occupies the driver's seat. The car and rocket are products of Tesla and SpaceX. This 2008-model Roadster was previously used by Musk for commuting, and is the only consumer car sent into space."


