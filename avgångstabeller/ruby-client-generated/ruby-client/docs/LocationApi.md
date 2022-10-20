# SwaggerClient::LocationApi

All URIs are relative to *https://api.vasttrafik.se/bin/rest.exe/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_stops**](LocationApi.md#get_all_stops) | **GET** /location.allstops | Returns a list of all stops available in the journey planner.
[**get_location_by_name**](LocationApi.md#get_location_by_name) | **GET** /location.name | Returns a list of possible matches in the journey planner database
[**get_nearby_address**](LocationApi.md#get_nearby_address) | **GET** /location.nearbyaddress | Returns the address nearest a given coordinate.
[**get_nearby_stops**](LocationApi.md#get_nearby_stops) | **GET** /location.nearbystops | Returns a list of stops around a given center coordinate.


# **get_all_stops**
> LocationList get_all_stops(opts)

Returns a list of all stops available in the journey planner.

Returns a list of all stops available in the journey planner. Be aware that a call of this service is very time consuming and should be only requested when it is really needed.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationApi.new

opts = { 
  format: 'format_example', # String | the required response format
  jsonp_callback: 'jsonp_callback_example' # String | If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name.
}

begin
  #Returns a list of all stops available in the journey planner.
  result = api_instance.get_all_stops(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationApi->get_all_stops: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| the required response format | [optional] 
 **jsonp_callback** | **String**| If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name. | [optional] 

### Return type

[**LocationList**](LocationList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_location_by_name**
> LocationList get_location_by_name(opts)

Returns a list of possible matches in the journey planner database

Performs a pattern matching of a user input to retrieve a list of possible matches in the journey planner database. Possible matches might be stops/stations, points of interest and addresses.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationApi.new

opts = { 
  input: 'input_example', # String | a string with the user input
  format: 'format_example', # String | the required response format
  jsonp_callback: 'jsonp_callback_example' # String | If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name.
}

begin
  #Returns a list of possible matches in the journey planner database
  result = api_instance.get_location_by_name(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationApi->get_location_by_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | **String**| a string with the user input | [optional] 
 **format** | **String**| the required response format | [optional] 
 **jsonp_callback** | **String**| If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name. | [optional] 

### Return type

[**LocationList**](LocationList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_nearby_address**
> LocationList get_nearby_address(origin_coord_lat, origin_coord_long, opts)

Returns the address nearest a given coordinate.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationApi.new

origin_coord_lat = 1.2 # Float | latitude of coordinate in the WGS84 system

origin_coord_long = 1.2 # Float | longitude of coordinate in the WGS84 system

opts = { 
  format: 'format_example', # String | the required response format
  jsonp_callback: 'jsonp_callback_example' # String | If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name.
}

begin
  #Returns the address nearest a given coordinate.
  result = api_instance.get_nearby_address(origin_coord_lat, origin_coord_long, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationApi->get_nearby_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **origin_coord_lat** | **Float**| latitude of coordinate in the WGS84 system | 
 **origin_coord_long** | **Float**| longitude of coordinate in the WGS84 system | 
 **format** | **String**| the required response format | [optional] 
 **jsonp_callback** | **String**| If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name. | [optional] 

### Return type

[**LocationList**](LocationList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_nearby_stops**
> LocationList get_nearby_stops(origin_coord_lat, origin_coord_long, opts)

Returns a list of stops around a given center coordinate.

Returns a list of stops around a given center coordinate. The returned results are ordered by their distance to the center coordinate.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationApi.new

origin_coord_lat = 1.2 # Float | latitude of center coordinate in the WGS84 system

origin_coord_long = 1.2 # Float | longitude of center coordinate in the WGS84 system

opts = { 
  max_no: 56, # Integer | maximum number of returned stops
  max_dist: 56, # Integer | maximum distance from the center coordinate
  format: 'format_example', # String | the required response format
  jsonp_callback: 'jsonp_callback_example' # String | If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name.
}

begin
  #Returns a list of stops around a given center coordinate.
  result = api_instance.get_nearby_stops(origin_coord_lat, origin_coord_long, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationApi->get_nearby_stops: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **origin_coord_lat** | **Float**| latitude of center coordinate in the WGS84 system | 
 **origin_coord_long** | **Float**| longitude of center coordinate in the WGS84 system | 
 **max_no** | **Integer**| maximum number of returned stops | [optional] 
 **max_dist** | **Integer**| maximum distance from the center coordinate | [optional] 
 **format** | **String**| the required response format | [optional] 
 **jsonp_callback** | **String**| If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name. | [optional] 

### Return type

[**LocationList**](LocationList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



