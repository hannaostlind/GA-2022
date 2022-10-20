# SwaggerClient::TripApi

All URIs are relative to *https://api.vasttrafik.se/bin/rest.exe/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_trip**](TripApi.md#get_trip) | **GET** /trip | Calculates a trip from a specified origin to a specified destination.


# **get_trip**
> TripList get_trip(opts)

Calculates a trip from a specified origin to a specified destination.

Calculates a trip from a specified origin to a specified destination. These might be stop/station IDs or coordinates based on addresses and points of interest validated by the location service or coordinates freely defined by the client. Parameters specifying both origin and destination are mandatory in calls to the trip service. When specifying a stop as origin, the parameter originId is used, while originCoordLat, originCoordLong, and originCoordName are used to specify a (named) coordinate. For the destination, the corresponding parameters are named either destId or destCoordLat, destCoordLong and destCoordName. It is also possible to define a via-stop/station. This forces the journey planner to search for trips which pass the defined station. The parameter is called viaId. When searching for a trip that goes via a coordinate, rather than a stop, two separate trip requests need to be combined into one.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TripApi.new

opts = { 
  origin_id: 789, # Integer | origin stop id
  origin_coord_lat: 1.2, # Float | origin latitude of center coordinate in the WGS84 system
  origin_coord_long: 1.2, # Float | origin longitude of center coordinate in the WGS84 system
  origin_coord_name: 'origin_coord_name_example', # String | name of the address at the specified origin coordinate
  dest_id: 789, # Integer | destination stop id
  dest_coord_lat: 1.2, # Float | destination latitude of center coordinate in the WGS84 system
  dest_coord_long: 1.2, # Float | destination longitude of center coordinate in the WGS84 system
  dest_coord_name: 'dest_coord_name_example', # String | name of the address at the specified destination coordinate
  via_id: 789, # Integer | via stop/station id
  date: Date.parse('2013-10-20'), # Date | date of the trip
  time: 'time_example', # String | time of the trip in format HH:MM
  search_for_arrival: 'search_for_arrival_example', # String | to specify that the given time and date is not the departure time but the latest time to arrive at the destination, set this parameter to the value 1.
  use_vas: 'use_vas_example', # String | to exclude trips with Västtågen, set this parameter to 0.
  use_ld_train: 'use_ld_train_example', # String | to exclude trips with long distance trains, set this parameter to 0.
  use_reg_train: 'use_reg_train_example', # String | to exclude trips with regional trains, set this parameter to 0.
  use_bus: 'use_bus_example', # String | to exclude trips with buses, set this parameter to 0.
  use_medical: 'use_medical_example', # String | to include medical transport lines trips with buses, set this parameter to 1.
  origin_medical_con: 'origin_medical_con_example', # String | to search for medical transport connections from the origin, set this parameter to 1.
  dest_medical_con: 'dest_medical_con_example', # String | to search for medical transport connections from the destination, set this parameter to 1.
  wheel_chair_space: 'wheel_chair_space_example', # String | to search for trips where at least one wheelchair space is present in the vehicle, set this parameter to 1.
  stroller_space: 'stroller_space_example', # String | to search for trips with space for stroller, baby carriage or rollator in the vehicle, set this parameter to 1.
  low_floor: 'low_floor_example', # String | to search for trips where the vehicle is equipped with a low floor section, but not necessarily a ramp or lift, set this parameter to 1.
  ramp_or_lift: 'ramp_or_lift_example', # String | to search for trips where the vehicle is equipped with ramp or lift that allows fully barrier-free boarding and alighting, set this parameter to 1.
  use_boat: 'use_boat_example', # String | to exclude trips with boats, set this parameter to 0.
  use_tram: 'use_tram_example', # String | to exclude trips with trams, set this parameter to 0.
  use_pt: 'use_pt_example', # String | to exclude trips with public transportation, set this parameter to 0.
  exclude_dr: 'exclude_dr_example', # String | to exclude journeys which require tel. registration, set this parameter to 1.
  max_walk_dist: 56, # Integer | maximum walking distance from/to the coordinate in meters
  walk_speed: 'walk_speed_example', # String | walking speed given in percent of normal speed
  origin_walk: 'origin_walk_example', # String | to exclude trips with walks from/to coordinates, set this to 0
  dest_walk: 'dest_walk_example', # String | to exclude trips with walks from/to coordinates, set this to 0
  only_walk: 'only_walk_example', # String | to search for walk-only trips, set this to 1
  origin_bike: 'origin_bike_example', # String | to search for trips with a bike ride from the origin to a nearby stop, where the journey continues using public transport, set this to 1.
  max_bike_dist: 56, # Integer | maximum biking distance from/to the coordinate in meters
  bike_criterion: 'bike_criterion_example', # String | optimize for either the fastest route or a route that is made up of a larger percentage of bike road, where 'F' is used to indicate tha fastest route with mimimized travel time, and 'D' is used to indicate dedicated bike roads to maximize use of bike roads.
  bike_profile: 'bike_profile_example', # String | determines the altitude profile of the route, based on a setting for how fast the user can bike when it is steep, where 'E' is used to indicate easy with minimized steepnes, 'N' is used to indicate normal, and 'P' is used to indicate powerful to allow more steepness.
  only_bike: 'only_bike_example', # String | to search for bike-only trips, set this to 1
  origin_car: 'origin_car_example', # String | to search for trips where customer travels by car from the origin and is dropped off at a stop to continue the trip using public transport, set this to 1.
  origin_car_with_parking: 'origin_car_with_parking_example', # String | to search for trips where the customer travels by car from the origin, parks at a commuter parking and walks to a nearby stop to continue the trip using public transport, set this to 1.
  max_car_dist: 56, # Integer | maximum car distance from/to the coordinate in meters
  only_car: 'only_car_example', # String | to search for car-only trips, set this to 1
  max_changes: 56, # Integer | maximum number of changes in the trip
  additional_change_time: 56, # Integer | to prolong the minimal change times in minutes between the public transport legs of the returned journeys
  disregard_default_change_margin: 'disregard_default_change_margin_example', # String | to ignore the default change margin, set this to 1
  need_journey_detail: 'need_journey_detail_example', # String | if the reference URL for the journey detail service is not needed in the re, set this to 0
  need_geo: 'need_geo_example', # String | if a reference link for each leg of the resulting trips, which can be used to request the geometry, is needed, set this to 1
  need_itinerary: 'need_itinerary_example', # String | if a reference link for each leg of the resulting trips, which can be used to request the itinerary, is needed, set this to 1
  num_trips: 56, # Integer | the number of trips in the returned result
  format: 'format_example', # String | the required response format
  jsonp_callback: 'jsonp_callback_example' # String | If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name.
}

begin
  #Calculates a trip from a specified origin to a specified destination.
  result = api_instance.get_trip(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TripApi->get_trip: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **origin_id** | **Integer**| origin stop id | [optional] 
 **origin_coord_lat** | **Float**| origin latitude of center coordinate in the WGS84 system | [optional] 
 **origin_coord_long** | **Float**| origin longitude of center coordinate in the WGS84 system | [optional] 
 **origin_coord_name** | **String**| name of the address at the specified origin coordinate | [optional] 
 **dest_id** | **Integer**| destination stop id | [optional] 
 **dest_coord_lat** | **Float**| destination latitude of center coordinate in the WGS84 system | [optional] 
 **dest_coord_long** | **Float**| destination longitude of center coordinate in the WGS84 system | [optional] 
 **dest_coord_name** | **String**| name of the address at the specified destination coordinate | [optional] 
 **via_id** | **Integer**| via stop/station id | [optional] 
 **date** | **Date**| date of the trip | [optional] 
 **time** | **String**| time of the trip in format HH:MM | [optional] 
 **search_for_arrival** | **String**| to specify that the given time and date is not the departure time but the latest time to arrive at the destination, set this parameter to the value 1. | [optional] 
 **use_vas** | **String**| to exclude trips with Västtågen, set this parameter to 0. | [optional] 
 **use_ld_train** | **String**| to exclude trips with long distance trains, set this parameter to 0. | [optional] 
 **use_reg_train** | **String**| to exclude trips with regional trains, set this parameter to 0. | [optional] 
 **use_bus** | **String**| to exclude trips with buses, set this parameter to 0. | [optional] 
 **use_medical** | **String**| to include medical transport lines trips with buses, set this parameter to 1. | [optional] 
 **origin_medical_con** | **String**| to search for medical transport connections from the origin, set this parameter to 1. | [optional] 
 **dest_medical_con** | **String**| to search for medical transport connections from the destination, set this parameter to 1. | [optional] 
 **wheel_chair_space** | **String**| to search for trips where at least one wheelchair space is present in the vehicle, set this parameter to 1. | [optional] 
 **stroller_space** | **String**| to search for trips with space for stroller, baby carriage or rollator in the vehicle, set this parameter to 1. | [optional] 
 **low_floor** | **String**| to search for trips where the vehicle is equipped with a low floor section, but not necessarily a ramp or lift, set this parameter to 1. | [optional] 
 **ramp_or_lift** | **String**| to search for trips where the vehicle is equipped with ramp or lift that allows fully barrier-free boarding and alighting, set this parameter to 1. | [optional] 
 **use_boat** | **String**| to exclude trips with boats, set this parameter to 0. | [optional] 
 **use_tram** | **String**| to exclude trips with trams, set this parameter to 0. | [optional] 
 **use_pt** | **String**| to exclude trips with public transportation, set this parameter to 0. | [optional] 
 **exclude_dr** | **String**| to exclude journeys which require tel. registration, set this parameter to 1. | [optional] 
 **max_walk_dist** | **Integer**| maximum walking distance from/to the coordinate in meters | [optional] 
 **walk_speed** | **String**| walking speed given in percent of normal speed | [optional] 
 **origin_walk** | **String**| to exclude trips with walks from/to coordinates, set this to 0 | [optional] 
 **dest_walk** | **String**| to exclude trips with walks from/to coordinates, set this to 0 | [optional] 
 **only_walk** | **String**| to search for walk-only trips, set this to 1 | [optional] 
 **origin_bike** | **String**| to search for trips with a bike ride from the origin to a nearby stop, where the journey continues using public transport, set this to 1. | [optional] 
 **max_bike_dist** | **Integer**| maximum biking distance from/to the coordinate in meters | [optional] 
 **bike_criterion** | **String**| optimize for either the fastest route or a route that is made up of a larger percentage of bike road, where &#39;F&#39; is used to indicate tha fastest route with mimimized travel time, and &#39;D&#39; is used to indicate dedicated bike roads to maximize use of bike roads. | [optional] 
 **bike_profile** | **String**| determines the altitude profile of the route, based on a setting for how fast the user can bike when it is steep, where &#39;E&#39; is used to indicate easy with minimized steepnes, &#39;N&#39; is used to indicate normal, and &#39;P&#39; is used to indicate powerful to allow more steepness. | [optional] 
 **only_bike** | **String**| to search for bike-only trips, set this to 1 | [optional] 
 **origin_car** | **String**| to search for trips where customer travels by car from the origin and is dropped off at a stop to continue the trip using public transport, set this to 1. | [optional] 
 **origin_car_with_parking** | **String**| to search for trips where the customer travels by car from the origin, parks at a commuter parking and walks to a nearby stop to continue the trip using public transport, set this to 1. | [optional] 
 **max_car_dist** | **Integer**| maximum car distance from/to the coordinate in meters | [optional] 
 **only_car** | **String**| to search for car-only trips, set this to 1 | [optional] 
 **max_changes** | **Integer**| maximum number of changes in the trip | [optional] 
 **additional_change_time** | **Integer**| to prolong the minimal change times in minutes between the public transport legs of the returned journeys | [optional] 
 **disregard_default_change_margin** | **String**| to ignore the default change margin, set this to 1 | [optional] 
 **need_journey_detail** | **String**| if the reference URL for the journey detail service is not needed in the re, set this to 0 | [optional] 
 **need_geo** | **String**| if a reference link for each leg of the resulting trips, which can be used to request the geometry, is needed, set this to 1 | [optional] 
 **need_itinerary** | **String**| if a reference link for each leg of the resulting trips, which can be used to request the itinerary, is needed, set this to 1 | [optional] 
 **num_trips** | **Integer**| the number of trips in the returned result | [optional] 
 **format** | **String**| the required response format | [optional] 
 **jsonp_callback** | **String**| If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name. | [optional] 

### Return type

[**TripList**](TripList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



