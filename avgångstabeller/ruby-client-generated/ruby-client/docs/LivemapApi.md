# SwaggerClient::LivemapApi

All URIs are relative to *https://api.vasttrafik.se/bin/rest.exe/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**livemap**](LivemapApi.md#livemap) | **GET** /livemap | Returns the positions of all vehicles in a given bounding box


# **livemap**
> LiveMap livemap(minx, maxx, miny, maxy, only_realtime)

Returns the positions of all vehicles in a given bounding box

This method will return the positions of all vehicles in a given bounding box.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LivemapApi.new

minx = 'minx_example' # String | Left border (longitude) of the bounding box in WGS84 * 1000000

maxx = 'maxx_example' # String | Right border (longitude) of the bounding box in WGS84 * 1000000

miny = 'miny_example' # String | Lower border (latitude) of the bounding box in WGS84 * 1000000

maxy = 'maxy_example' # String | Upper border (latitude) of the bounding box in WGS84 * 1000000

only_realtime = 'only_realtime_example' # String | Can be used to define whether all vehicles should be returned or only those  vehicles which have realtime information. If it is set to yes, only vehicles  with realtime information are returned, if it is set to no, all vehicles in the  bounding box are returned.


begin
  #Returns the positions of all vehicles in a given bounding box
  result = api_instance.livemap(minx, maxx, miny, maxy, only_realtime)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LivemapApi->livemap: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minx** | **String**| Left border (longitude) of the bounding box in WGS84 * 1000000 | 
 **maxx** | **String**| Right border (longitude) of the bounding box in WGS84 * 1000000 | 
 **miny** | **String**| Lower border (latitude) of the bounding box in WGS84 * 1000000 | 
 **maxy** | **String**| Upper border (latitude) of the bounding box in WGS84 * 1000000 | 
 **only_realtime** | **String**| Can be used to define whether all vehicles should be returned or only those  vehicles which have realtime information. If it is set to yes, only vehicles  with realtime information are returned, if it is set to no, all vehicles in the  bounding box are returned. | 

### Return type

[**LiveMap**](LiveMap.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



