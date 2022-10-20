# SwaggerClient::DepartureBoardApi

All URIs are relative to *https://api.vasttrafik.se/bin/rest.exe/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_departure_board**](DepartureBoardApi.md#get_departure_board) | **GET** /departureBoard | Return the next 20 departures (or less if not existing) from a given point in time or the next departures in a given timespan.


# **get_departure_board**
> DepartureBoard get_departure_board(id, date, time, opts)

Return the next 20 departures (or less if not existing) from a given point in time or the next departures in a given timespan.

This method will return the next 20 departures (or less if not existing) from a given point in time or the next departures in a given timespan. The service can only be called for stops/stations by using according ID retrieved by the location method. The parameter is called id. The time and date are defined with the parameters date and time.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DepartureBoardApi.new

id = 789 # Integer | stop id

date = Date.parse('2013-10-20') # Date | the date

time = 'time_example' # String | the time in format HH:MM

opts = { 
  use_vas: 'use_vas_example', # String | to exclude trips with Västtågen, set this parameter to 0.
  use_ld_train: 'use_ld_train_example', # String | to exclude trips with long distance trains, set this parameter to 0.
  use_reg_train: 'use_reg_train_example', # String | to exclude trips with regional trains, set this parameter to 0.
  use_bus: 'use_bus_example', # String | to exclude trips with buses, set this parameter to 0.
  use_boat: 'use_boat_example', # String | to exclude trips with boats, set this parameter to 0.
  use_tram: 'use_tram_example', # String | to exclude trips with trams, set this parameter to 0.
  exclude_dr: 'exclude_dr_example', # String | to exclude journeys which require tel. registration, set this parameter to 0.
  time_span: 56, # Integer | to get the next departures in a specified timespan of up to 24 hours (unit: minutes). If this parameter is not set, the result will contain the next 20 departures.
  max_departures_per_line: 56, # Integer | if timeSpan is set you can further reduce the number of returned journeys by adding this parameter, which will cause only the given number of journeys for every combination of line and direction.
  need_journey_detail: 'need_journey_detail_example', # String | if the reference URL for the journey detail service is not needed in the result, set this parameter to 0
  direction: 789, # Integer | stop id in order to get only departures of vehicles with a specified direction
  format: 'format_example', # String | the required response format
  jsonp_callback: 'jsonp_callback_example' # String | If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name.
}

begin
  #Return the next 20 departures (or less if not existing) from a given point in time or the next departures in a given timespan.
  result = api_instance.get_departure_board(id, date, time, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DepartureBoardApi->get_departure_board: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| stop id | 
 **date** | **Date**| the date | 
 **time** | **String**| the time in format HH:MM | 
 **use_vas** | **String**| to exclude trips with Västtågen, set this parameter to 0. | [optional] 
 **use_ld_train** | **String**| to exclude trips with long distance trains, set this parameter to 0. | [optional] 
 **use_reg_train** | **String**| to exclude trips with regional trains, set this parameter to 0. | [optional] 
 **use_bus** | **String**| to exclude trips with buses, set this parameter to 0. | [optional] 
 **use_boat** | **String**| to exclude trips with boats, set this parameter to 0. | [optional] 
 **use_tram** | **String**| to exclude trips with trams, set this parameter to 0. | [optional] 
 **exclude_dr** | **String**| to exclude journeys which require tel. registration, set this parameter to 0. | [optional] 
 **time_span** | **Integer**| to get the next departures in a specified timespan of up to 24 hours (unit: minutes). If this parameter is not set, the result will contain the next 20 departures. | [optional] 
 **max_departures_per_line** | **Integer**| if timeSpan is set you can further reduce the number of returned journeys by adding this parameter, which will cause only the given number of journeys for every combination of line and direction. | [optional] 
 **need_journey_detail** | **String**| if the reference URL for the journey detail service is not needed in the result, set this parameter to 0 | [optional] 
 **direction** | **Integer**| stop id in order to get only departures of vehicles with a specified direction | [optional] 
 **format** | **String**| the required response format | [optional] 
 **jsonp_callback** | **String**| If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name. | [optional] 

### Return type

[**DepartureBoard**](DepartureBoard.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



