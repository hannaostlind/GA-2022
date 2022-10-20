# SwaggerClient::GeometryApi

All URIs are relative to *https://api.vasttrafik.se/bin/rest.exe/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_geometry**](GeometryApi.md#get_geometry) | **GET** /geometry | Returns the polyline for a leg.


# **get_geometry**
> Geometry get_geometry(ref)

Returns the polyline for a leg.

Returns the polyline for a leg. This service can not be called directly but only by reference URLs in a result of a trip or JourneyDetail request. The result contains a list of WGS84 coordinates which can be used to display the polyline on a map.If the parameter needItinerary=1 is passed in the URL of the trip request that contained the reference to the Geometry service, the geometry reference link will also contain an itinerary for walk, bike and car legs, that can be used to generate turn-by-turn instructions.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GeometryApi.new

ref = 'ref_example' # String | the ref query parameter, URL decoded, from a URL retrieved as a result of a trip or JourneyDetail request


begin
  #Returns the polyline for a leg.
  result = api_instance.get_geometry(ref)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GeometryApi->get_geometry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ref** | **String**| the ref query parameter, URL decoded, from a URL retrieved as a result of a trip or JourneyDetail request | 

### Return type

[**Geometry**](Geometry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



