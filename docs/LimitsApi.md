# ForestVPNCloudAPI::LimitsApi

All URIs are relative to *https://api.forestvpn.com/cloud/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_data_usage_limit**](LimitsApi.md#create_data_usage_limit) | **POST** /limits/data-usage/ | Create data usage limit |
| [**delete_data_usage_limit**](LimitsApi.md#delete_data_usage_limit) | **DELETE** /limits/data-usage/{limitId}/ | Delete data usage limit |
| [**get_data_usage_limit**](LimitsApi.md#get_data_usage_limit) | **GET** /limits/data-usage/{limitId}/ | Data usage limit details |
| [**list_data_usage_limits**](LimitsApi.md#list_data_usage_limits) | **GET** /limits/data-usage/ | Data usage limit list |
| [**partial_update_data_usage_limit**](LimitsApi.md#partial_update_data_usage_limit) | **PATCH** /limits/data-usage/{limitId}/ | Partial update profile details |
| [**update_data_usage_limit**](LimitsApi.md#update_data_usage_limit) | **PUT** /limits/data-usage/{limitId}/ | Update data usage limit |


## create_data_usage_limit

> <DataUsageLimit> create_data_usage_limit(opts)

Create data usage limit

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

api_instance = ForestVPNCloudAPI::LimitsApi.new
opts = {
  create_or_update_data_usage_limit_request: ForestVPNCloudAPI::CreateOrUpdateDataUsageLimitRequest.new # CreateOrUpdateDataUsageLimitRequest | 
}

begin
  # Create data usage limit
  result = api_instance.create_data_usage_limit(opts)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling LimitsApi->create_data_usage_limit: #{e}"
end
```

#### Using the create_data_usage_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataUsageLimit>, Integer, Hash)> create_data_usage_limit_with_http_info(opts)

```ruby
begin
  # Create data usage limit
  data, status_code, headers = api_instance.create_data_usage_limit_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataUsageLimit>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling LimitsApi->create_data_usage_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_or_update_data_usage_limit_request** | [**CreateOrUpdateDataUsageLimitRequest**](CreateOrUpdateDataUsageLimitRequest.md) |  | [optional] |

### Return type

[**DataUsageLimit**](DataUsageLimit.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_data_usage_limit

> delete_data_usage_limit(limit_id)

Delete data usage limit

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

api_instance = ForestVPNCloudAPI::LimitsApi.new
limit_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete data usage limit
  api_instance.delete_data_usage_limit(limit_id)
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling LimitsApi->delete_data_usage_limit: #{e}"
end
```

#### Using the delete_data_usage_limit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_data_usage_limit_with_http_info(limit_id)

```ruby
begin
  # Delete data usage limit
  data, status_code, headers = api_instance.delete_data_usage_limit_with_http_info(limit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling LimitsApi->delete_data_usage_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_data_usage_limit

> <DataUsageLimit> get_data_usage_limit(limit_id)

Data usage limit details

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

api_instance = ForestVPNCloudAPI::LimitsApi.new
limit_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Data usage limit details
  result = api_instance.get_data_usage_limit(limit_id)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling LimitsApi->get_data_usage_limit: #{e}"
end
```

#### Using the get_data_usage_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataUsageLimit>, Integer, Hash)> get_data_usage_limit_with_http_info(limit_id)

```ruby
begin
  # Data usage limit details
  data, status_code, headers = api_instance.get_data_usage_limit_with_http_info(limit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataUsageLimit>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling LimitsApi->get_data_usage_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit_id** | **String** |  |  |

### Return type

[**DataUsageLimit**](DataUsageLimit.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_data_usage_limits

> <Array<DataUsageLimit>> list_data_usage_limits

Data usage limit list

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

api_instance = ForestVPNCloudAPI::LimitsApi.new

begin
  # Data usage limit list
  result = api_instance.list_data_usage_limits
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling LimitsApi->list_data_usage_limits: #{e}"
end
```

#### Using the list_data_usage_limits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DataUsageLimit>>, Integer, Hash)> list_data_usage_limits_with_http_info

```ruby
begin
  # Data usage limit list
  data, status_code, headers = api_instance.list_data_usage_limits_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DataUsageLimit>>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling LimitsApi->list_data_usage_limits_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DataUsageLimit&gt;**](DataUsageLimit.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## partial_update_data_usage_limit

> <DataUsageLimit> partial_update_data_usage_limit(limit_id, create_or_update_data_usage_limit_request)

Partial update profile details

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

api_instance = ForestVPNCloudAPI::LimitsApi.new
limit_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_or_update_data_usage_limit_request = ForestVPNCloudAPI::CreateOrUpdateDataUsageLimitRequest.new # CreateOrUpdateDataUsageLimitRequest | 

begin
  # Partial update profile details
  result = api_instance.partial_update_data_usage_limit(limit_id, create_or_update_data_usage_limit_request)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling LimitsApi->partial_update_data_usage_limit: #{e}"
end
```

#### Using the partial_update_data_usage_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataUsageLimit>, Integer, Hash)> partial_update_data_usage_limit_with_http_info(limit_id, create_or_update_data_usage_limit_request)

```ruby
begin
  # Partial update profile details
  data, status_code, headers = api_instance.partial_update_data_usage_limit_with_http_info(limit_id, create_or_update_data_usage_limit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataUsageLimit>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling LimitsApi->partial_update_data_usage_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit_id** | **String** |  |  |
| **create_or_update_data_usage_limit_request** | [**CreateOrUpdateDataUsageLimitRequest**](CreateOrUpdateDataUsageLimitRequest.md) |  |  |

### Return type

[**DataUsageLimit**](DataUsageLimit.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_data_usage_limit

> <DataUsageLimit> update_data_usage_limit(limit_id, create_or_update_data_usage_limit_request)

Update data usage limit

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

api_instance = ForestVPNCloudAPI::LimitsApi.new
limit_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_or_update_data_usage_limit_request = ForestVPNCloudAPI::CreateOrUpdateDataUsageLimitRequest.new # CreateOrUpdateDataUsageLimitRequest | 

begin
  # Update data usage limit
  result = api_instance.update_data_usage_limit(limit_id, create_or_update_data_usage_limit_request)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling LimitsApi->update_data_usage_limit: #{e}"
end
```

#### Using the update_data_usage_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataUsageLimit>, Integer, Hash)> update_data_usage_limit_with_http_info(limit_id, create_or_update_data_usage_limit_request)

```ruby
begin
  # Update data usage limit
  data, status_code, headers = api_instance.update_data_usage_limit_with_http_info(limit_id, create_or_update_data_usage_limit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataUsageLimit>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling LimitsApi->update_data_usage_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit_id** | **String** |  |  |
| **create_or_update_data_usage_limit_request** | [**CreateOrUpdateDataUsageLimitRequest**](CreateOrUpdateDataUsageLimitRequest.md) |  |  |

### Return type

[**DataUsageLimit**](DataUsageLimit.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

