# SwaggerClient::JourneyDetailApi

All URIs are relative to *https://api.vasttrafik.se/bin/rest.exe/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_journey_detail**](JourneyDetailApi.md#get_journey_detail) | **GET** /journeyDetail | Returns information about the complete route of a trip.


# **get_journey_detail**
> JourneyDetail get_journey_detail(ref)

Returns information about the complete route of a trip.

Delivers information about the complete route of a trip. This service can not be called directly but only by reference URLs in a result of a trip or departureBoard request. It contains a list of all stops/stations of this journey including all departure and arrival times (with real-time data if available) and additional information like specific attributes about facilities and other texts.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::JourneyDetailApi.new

ref = 'ref_example' # String | the ref query parameter, URL decoded, from a URL retrieved as a result of a trip or or departureBoard request


begin
  #Returns information about the complete route of a trip.
  result = api_instance.get_journey_detail(ref)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JourneyDetailApi->get_journey_detail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ref** | **String**| the ref query parameter, URL decoded, from a URL retrieved as a result of a trip or or departureBoard request | 

### Return type

[**JourneyDetail**](JourneyDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



