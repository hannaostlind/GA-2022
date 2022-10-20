# SwaggerClient::Arrival

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fg_color** | **String** | Foregroundcolor of this line | 
**stop** | **String** | Contains the name of the stop/station | 
**booking** | **BOOLEAN** | Will be true if this journey needs to be booked | [optional] 
**journey_detail_ref** | [**JourneyDetailRef**](JourneyDetailRef.md) |  | 
**origin** | **String** | Origin of the journey | 
**track** | **String** | Track information, if available | 
**rt_track** | **String** | Realtime track information, if available | [optional] 
**sname** | **String** | Short name of the leg | 
**type** | **String** | The attribute type specifies the type of the arriving journey. Valid values are VAS, LDT (Long Distance Train), REG (Regional train), BUS , BOAT, TRAM, TAXI (Taxi/Telebus) | 
**date** | **Date** | Date in format YYYY-MM-DD | 
**bg_color** | **String** | Backgroundcolor of this line | 
**stroke** | **String** | Stroke style of this line | 
**rt_date** | **Date** | Realtime date in format YYYY-MM-DD, if available | 
**time** | **String** | Time in format HH:MM | 
**name** | **String** | The attribute name specifies the name of the arriving journey | 
**rt_time** | **String** | Realtime time in format HH:MM if available | 
**night** | **BOOLEAN** | Will be true if this journey is a night journey | [optional] 
**stopid** | **String** | Contains the id of the stop/station | 
**journeyid** | **String** | Contains the id of the journey | 
**accessibility** | **String** | will only be set if the vehicle has wheelchair + ramp/lift or lowfloor according to realtime data | 


