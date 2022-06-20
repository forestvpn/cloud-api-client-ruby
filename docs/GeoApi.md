# ForestVPNCloudAPI::GeoApi

All URIs are relative to *https://api.forestvpn.com/cloud/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_locations**](GeoApi.md#list_locations) | **GET** /locations/ | Location list |


## list_locations

> <Array<Location>> list_locations

Location list

### Examples

```ruby
require 'time'
require 'forestvpn_cloud_api'
# setup authorization
ForestVPNCloudAPI.configure do |config|
  # Configure API key authorization: ApiTokenAuth
  config.api_key['ApiTokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiTokenAuth'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ForestVPNCloudAPI::GeoApi.new

begin
  # Location list
  result = api_instance.list_locations
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling GeoApi->list_locations: #{e}"
end
```

#### Using the list_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Location>>, Integer, Hash)> list_locations_with_http_info

```ruby
begin
  # Location list
  data, status_code, headers = api_instance.list_locations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Location>>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling GeoApi->list_locations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Location&gt;**](Location.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

