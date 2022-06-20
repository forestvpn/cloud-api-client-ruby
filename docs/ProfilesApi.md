# ForestVPNCloudAPI::ProfilesApi

All URIs are relative to *https://api.forestvpn.com/cloud/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_profile**](ProfilesApi.md#create_profile) | **POST** /profiles/ | Create profile |
| [**create_profile_data_usage_limit**](ProfilesApi.md#create_profile_data_usage_limit) | **POST** /profiles/{profileId}/limits/data-usages/ | Create profile data usage limit |
| [**delete_profile**](ProfilesApi.md#delete_profile) | **DELETE** /profiles/{profileId}/ | Delete profile |
| [**delete_profile_data_usage_limit**](ProfilesApi.md#delete_profile_data_usage_limit) | **DELETE** /profiles/{profileId}/limits/data-usages/{limitId}/ | Delete profile data usage limit |
| [**get_profile**](ProfilesApi.md#get_profile) | **GET** /profiles/{profileId}/ | Profile details |
| [**get_profile_data_usage_limit**](ProfilesApi.md#get_profile_data_usage_limit) | **GET** /profiles/{profileId}/limits/data-usages/{limitId}/ | Profile data usage limit details |
| [**list_profile_data_usage_limits**](ProfilesApi.md#list_profile_data_usage_limits) | **GET** /profiles/{profileId}/limits/data-usages/ | Profile data usage limits list |
| [**list_profile_stats**](ProfilesApi.md#list_profile_stats) | **GET** /profiles/{profileId}/stats/ | Profile stats list |
| [**list_profiles**](ProfilesApi.md#list_profiles) | **GET** /profiles/ | Profile list |
| [**partial_update_profile**](ProfilesApi.md#partial_update_profile) | **PATCH** /profiles/{profileId}/ | Partial update profile details |
| [**partial_update_profile_data_usage_limit**](ProfilesApi.md#partial_update_profile_data_usage_limit) | **PATCH** /profiles/{profileId}/limits/data-usages/{limitId}/ | Partial update profile data usage limit |
| [**update_profile**](ProfilesApi.md#update_profile) | **PUT** /profiles/{profileId}/ | Update profile details |
| [**update_profile_data_usage_limit**](ProfilesApi.md#update_profile_data_usage_limit) | **PUT** /profiles/{profileId}/limits/data-usages/{limitId}/ | Update profile data usage limit |


## create_profile

> <Profile> create_profile(opts)

Create profile

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
opts = {
  create_or_update_profile_request: ForestVPNCloudAPI::CreateOrUpdateProfileRequest.new # CreateOrUpdateProfileRequest | 
}

begin
  # Create profile
  result = api_instance.create_profile(opts)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->create_profile: #{e}"
end
```

#### Using the create_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Profile>, Integer, Hash)> create_profile_with_http_info(opts)

```ruby
begin
  # Create profile
  data, status_code, headers = api_instance.create_profile_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Profile>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->create_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_or_update_profile_request** | [**CreateOrUpdateProfileRequest**](CreateOrUpdateProfileRequest.md) |  | [optional] |

### Return type

[**Profile**](Profile.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_profile_data_usage_limit

> <DataUsageLimit> create_profile_data_usage_limit(profile_id, opts)

Create profile data usage limit

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
profile_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  create_or_update_data_usage_limit_request: ForestVPNCloudAPI::CreateOrUpdateDataUsageLimitRequest.new # CreateOrUpdateDataUsageLimitRequest | 
}

begin
  # Create profile data usage limit
  result = api_instance.create_profile_data_usage_limit(profile_id, opts)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->create_profile_data_usage_limit: #{e}"
end
```

#### Using the create_profile_data_usage_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataUsageLimit>, Integer, Hash)> create_profile_data_usage_limit_with_http_info(profile_id, opts)

```ruby
begin
  # Create profile data usage limit
  data, status_code, headers = api_instance.create_profile_data_usage_limit_with_http_info(profile_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataUsageLimit>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->create_profile_data_usage_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **create_or_update_data_usage_limit_request** | [**CreateOrUpdateDataUsageLimitRequest**](CreateOrUpdateDataUsageLimitRequest.md) |  | [optional] |

### Return type

[**DataUsageLimit**](DataUsageLimit.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_profile

> delete_profile(profile_id)

Delete profile

Deletes profile and all associated resources

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
profile_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete profile
  api_instance.delete_profile(profile_id)
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->delete_profile: #{e}"
end
```

#### Using the delete_profile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_profile_with_http_info(profile_id)

```ruby
begin
  # Delete profile
  data, status_code, headers = api_instance.delete_profile_with_http_info(profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->delete_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_profile_data_usage_limit

> delete_profile_data_usage_limit(profile_id, limit_id)

Delete profile data usage limit

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
profile_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
limit_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete profile data usage limit
  api_instance.delete_profile_data_usage_limit(profile_id, limit_id)
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->delete_profile_data_usage_limit: #{e}"
end
```

#### Using the delete_profile_data_usage_limit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_profile_data_usage_limit_with_http_info(profile_id, limit_id)

```ruby
begin
  # Delete profile data usage limit
  data, status_code, headers = api_instance.delete_profile_data_usage_limit_with_http_info(profile_id, limit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->delete_profile_data_usage_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **limit_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile

> <Profile> get_profile(profile_id)

Profile details

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
profile_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Profile details
  result = api_instance.get_profile(profile_id)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->get_profile: #{e}"
end
```

#### Using the get_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Profile>, Integer, Hash)> get_profile_with_http_info(profile_id)

```ruby
begin
  # Profile details
  data, status_code, headers = api_instance.get_profile_with_http_info(profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Profile>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->get_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |

### Return type

[**Profile**](Profile.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile_data_usage_limit

> <DataUsageLimit> get_profile_data_usage_limit(profile_id, limit_id)

Profile data usage limit details

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
profile_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
limit_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Profile data usage limit details
  result = api_instance.get_profile_data_usage_limit(profile_id, limit_id)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->get_profile_data_usage_limit: #{e}"
end
```

#### Using the get_profile_data_usage_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataUsageLimit>, Integer, Hash)> get_profile_data_usage_limit_with_http_info(profile_id, limit_id)

```ruby
begin
  # Profile data usage limit details
  data, status_code, headers = api_instance.get_profile_data_usage_limit_with_http_info(profile_id, limit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataUsageLimit>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->get_profile_data_usage_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **limit_id** | **String** |  |  |

### Return type

[**DataUsageLimit**](DataUsageLimit.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_profile_data_usage_limits

> <Array<DataUsageLimit>> list_profile_data_usage_limits(profile_id)

Profile data usage limits list

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
profile_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Profile data usage limits list
  result = api_instance.list_profile_data_usage_limits(profile_id)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->list_profile_data_usage_limits: #{e}"
end
```

#### Using the list_profile_data_usage_limits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DataUsageLimit>>, Integer, Hash)> list_profile_data_usage_limits_with_http_info(profile_id)

```ruby
begin
  # Profile data usage limits list
  data, status_code, headers = api_instance.list_profile_data_usage_limits_with_http_info(profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DataUsageLimit>>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->list_profile_data_usage_limits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |

### Return type

[**Array&lt;DataUsageLimit&gt;**](DataUsageLimit.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_profile_stats

> <Array<ProfileStats>> list_profile_stats(profile_id, opts)

Profile stats list

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
profile_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  aggregate_by: 'hourly', # String | 
  date_after: Date.parse('2013-10-20'), # Date | 
  date_before: Date.parse('2013-10-20'), # Date | 
  per_page: 56, # Integer | 
  page: 56 # Integer | 
}

begin
  # Profile stats list
  result = api_instance.list_profile_stats(profile_id, opts)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->list_profile_stats: #{e}"
end
```

#### Using the list_profile_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ProfileStats>>, Integer, Hash)> list_profile_stats_with_http_info(profile_id, opts)

```ruby
begin
  # Profile stats list
  data, status_code, headers = api_instance.list_profile_stats_with_http_info(profile_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ProfileStats>>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->list_profile_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **aggregate_by** | **String** |  | [optional] |
| **date_after** | **Date** |  | [optional] |
| **date_before** | **Date** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |

### Return type

[**Array&lt;ProfileStats&gt;**](ProfileStats.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_profiles

> <Array<Profile>> list_profiles(opts)

Profile list

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
opts = {
  external_key: 'external_key_example', # String | 
  per_page: 56, # Integer | 
  page: 56 # Integer | 
}

begin
  # Profile list
  result = api_instance.list_profiles(opts)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->list_profiles: #{e}"
end
```

#### Using the list_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Profile>>, Integer, Hash)> list_profiles_with_http_info(opts)

```ruby
begin
  # Profile list
  data, status_code, headers = api_instance.list_profiles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Profile>>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->list_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_key** | **String** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |

### Return type

[**Array&lt;Profile&gt;**](Profile.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## partial_update_profile

> <Profile> partial_update_profile(profile_id, create_or_update_profile_request)

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
profile_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_or_update_profile_request = ForestVPNCloudAPI::CreateOrUpdateProfileRequest.new # CreateOrUpdateProfileRequest | 

begin
  # Partial update profile details
  result = api_instance.partial_update_profile(profile_id, create_or_update_profile_request)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->partial_update_profile: #{e}"
end
```

#### Using the partial_update_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Profile>, Integer, Hash)> partial_update_profile_with_http_info(profile_id, create_or_update_profile_request)

```ruby
begin
  # Partial update profile details
  data, status_code, headers = api_instance.partial_update_profile_with_http_info(profile_id, create_or_update_profile_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Profile>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->partial_update_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **create_or_update_profile_request** | [**CreateOrUpdateProfileRequest**](CreateOrUpdateProfileRequest.md) |  |  |

### Return type

[**Profile**](Profile.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## partial_update_profile_data_usage_limit

> <DataUsageLimit> partial_update_profile_data_usage_limit(profile_id, limit_id, create_or_update_data_usage_limit_request)

Partial update profile data usage limit

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
profile_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
limit_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_or_update_data_usage_limit_request = ForestVPNCloudAPI::CreateOrUpdateDataUsageLimitRequest.new # CreateOrUpdateDataUsageLimitRequest | 

begin
  # Partial update profile data usage limit
  result = api_instance.partial_update_profile_data_usage_limit(profile_id, limit_id, create_or_update_data_usage_limit_request)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->partial_update_profile_data_usage_limit: #{e}"
end
```

#### Using the partial_update_profile_data_usage_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataUsageLimit>, Integer, Hash)> partial_update_profile_data_usage_limit_with_http_info(profile_id, limit_id, create_or_update_data_usage_limit_request)

```ruby
begin
  # Partial update profile data usage limit
  data, status_code, headers = api_instance.partial_update_profile_data_usage_limit_with_http_info(profile_id, limit_id, create_or_update_data_usage_limit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataUsageLimit>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->partial_update_profile_data_usage_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **limit_id** | **String** |  |  |
| **create_or_update_data_usage_limit_request** | [**CreateOrUpdateDataUsageLimitRequest**](CreateOrUpdateDataUsageLimitRequest.md) |  |  |

### Return type

[**DataUsageLimit**](DataUsageLimit.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_profile

> <Profile> update_profile(profile_id, create_or_update_profile_request)

Update profile details

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
profile_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_or_update_profile_request = ForestVPNCloudAPI::CreateOrUpdateProfileRequest.new # CreateOrUpdateProfileRequest | 

begin
  # Update profile details
  result = api_instance.update_profile(profile_id, create_or_update_profile_request)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->update_profile: #{e}"
end
```

#### Using the update_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Profile>, Integer, Hash)> update_profile_with_http_info(profile_id, create_or_update_profile_request)

```ruby
begin
  # Update profile details
  data, status_code, headers = api_instance.update_profile_with_http_info(profile_id, create_or_update_profile_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Profile>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->update_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **create_or_update_profile_request** | [**CreateOrUpdateProfileRequest**](CreateOrUpdateProfileRequest.md) |  |  |

### Return type

[**Profile**](Profile.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_profile_data_usage_limit

> <DataUsageLimit> update_profile_data_usage_limit(profile_id, limit_id, create_or_update_data_usage_limit_request)

Update profile data usage limit

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

api_instance = ForestVPNCloudAPI::ProfilesApi.new
profile_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
limit_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_or_update_data_usage_limit_request = ForestVPNCloudAPI::CreateOrUpdateDataUsageLimitRequest.new # CreateOrUpdateDataUsageLimitRequest | 

begin
  # Update profile data usage limit
  result = api_instance.update_profile_data_usage_limit(profile_id, limit_id, create_or_update_data_usage_limit_request)
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->update_profile_data_usage_limit: #{e}"
end
```

#### Using the update_profile_data_usage_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataUsageLimit>, Integer, Hash)> update_profile_data_usage_limit_with_http_info(profile_id, limit_id, create_or_update_data_usage_limit_request)

```ruby
begin
  # Update profile data usage limit
  data, status_code, headers = api_instance.update_profile_data_usage_limit_with_http_info(profile_id, limit_id, create_or_update_data_usage_limit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataUsageLimit>
rescue ForestVPNCloudAPI::ApiError => e
  puts "Error when calling ProfilesApi->update_profile_data_usage_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **limit_id** | **String** |  |  |
| **create_or_update_data_usage_limit_request** | [**CreateOrUpdateDataUsageLimitRequest**](CreateOrUpdateDataUsageLimitRequest.md) |  |  |

### Return type

[**DataUsageLimit**](DataUsageLimit.md)

### Authorization

[ApiTokenAuth](../README.md#ApiTokenAuth), [BearerTokenAuth](../README.md#BearerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

