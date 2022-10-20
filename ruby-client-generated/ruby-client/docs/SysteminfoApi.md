# SwaggerClient::SysteminfoApi

All URIs are relative to *https://api.vasttrafik.se/bin/rest.exe/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_system_info**](SysteminfoApi.md#get_system_info) | **GET** /systeminfo | Provides information about the journey planner and the underlying data


# **get_system_info**
> SystemInfo get_system_info(opts)

Provides information about the journey planner and the underlying data

Provides information about the journey planner and underlying data. It will return the begin of end of the timetable period and the creation date of the timetable data.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SysteminfoApi.new

opts = { 
  format: 'format_example', # String | the required response format
  jsonp_callback: 'jsonp_callback_example' # String | If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name.
}

begin
  #Provides information about the journey planner and the underlying data
  result = api_instance.get_system_info(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SysteminfoApi->get_system_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| the required response format | [optional] 
 **jsonp_callback** | **String**| If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name. | [optional] 

### Return type

[**SystemInfo**](SystemInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



