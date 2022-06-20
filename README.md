# forestvpn_cloud_api

ForestVPNCloudAPI - the Ruby gem for the ForestVPN Cloud API

ForestVPN Cloud - it's a Google Cloud but for VPN apps. Ready to use VPN Cloud Platform minimizes efforts to build fast,
secure, and modern VPN apps.

For more information, please visit [https://forestvpn.com/](https://forestvpn.com/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build forestvpn_cloud_api.gemspec
```

Then either install the gem locally:

```shell
gem install ./forestvpn_cloud_api-ERSION.gem
```

(for development, run `gem install --dev ./forestvpn_cloud_api-ERSION.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'forestvpn_cloud_api', '~> ERSION'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the
Gemfile:

    gem 'forestvpn_cloud_api', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'forestvpn_cloud_api'

# Setup authorization
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
  #Location list
  result = api_instance.list_locations
  p result
rescue ForestVPNCloudAPI::ApiError => e
  puts "Exception when calling GeoApi->list_locations: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.forestvpn.com/cloud/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ForestVPNCloudAPI::GeoApi* | [**list_locations**](docs/GeoApi.md#list_locations) | **GET** /locations/ | Location list
*ForestVPNCloudAPI::LimitsApi* | [**create_data_usage_limit**](docs/LimitsApi.md#create_data_usage_limit) | **
POST** /limits/data-usage/ | Create data usage limit
*ForestVPNCloudAPI::LimitsApi* | [**delete_data_usage_limit**](docs/LimitsApi.md#delete_data_usage_limit) | **
DELETE** /limits/data-usage/{limitId}/ | Delete data usage limit
*ForestVPNCloudAPI::LimitsApi* | [**get_data_usage_limit**](docs/LimitsApi.md#get_data_usage_limit) | **
GET** /limits/data-usage/{limitId}/ | Data usage limit details
*ForestVPNCloudAPI::LimitsApi* | [**lis_data_usage_limits**](docs/LimitsApi.md#lis_data_usage_limits) | **
GET** /limits/data-usage/ | Data usage limit list
*ForestVPNCloudAPI::LimitsApi* | [**
partial_update_data_usage_limit**](docs/LimitsApi.md#partial_update_data_usage_limit) | **
PATCH** /limits/data-usage/{limitId}/ | Partial update profile details
*ForestVPNCloudAPI::LimitsApi* | [**update_data_usage_limit**](docs/LimitsApi.md#update_data_usage_limit) | **
PUT** /limits/data-usage/{limitId}/ | Update data usage limit
*ForestVPNCloudAPI::ProfilesApi* | [**create_profile**](docs/ProfilesApi.md#create_profile) | **
POST** /profiles/ | Create profile
*ForestVPNCloudAPI::ProfilesApi* | [**
create_profile_data_usage_limit**](docs/ProfilesApi.md#create_profile_data_usage_limit) | **
POST** /profiles/{profileId}/limits/data-usages/ | Create profile data usage limit
*ForestVPNCloudAPI::ProfilesApi* | [**delete_profile**](docs/ProfilesApi.md#delete_profile) | **
DELETE** /profiles/{profileId}/ | Delete profile
*ForestVPNCloudAPI::ProfilesApi* | [**
delete_profile_data_usage_limit**](docs/ProfilesApi.md#delete_profile_data_usage_limit) | **
DELETE** /profiles/{profileId}/limits/data-usages/{limitId}/ | Delete profile data usage limit
*ForestVPNCloudAPI::ProfilesApi* | [**get_profile**](docs/ProfilesApi.md#get_profile) | **
GET** /profiles/{profileId}/ | Profile details
*ForestVPNCloudAPI::ProfilesApi* | [**
get_profile_data_usage_limit**](docs/ProfilesApi.md#get_profile_data_usage_limit) | **
GET** /profiles/{profileId}/limits/data-usages/{limitId}/ | Profile data usage limit details
*ForestVPNCloudAPI::ProfilesApi* | [**
list_profile_data_usage_limits**](docs/ProfilesApi.md#list_profile_data_usage_limits) | **
GET** /profiles/{profileId}/limits/data-usages/ | Profile data usage limits list
*ForestVPNCloudAPI::ProfilesApi* | [**list_profile_stats**](docs/ProfilesApi.md#list_profile_stats) | **
GET** /profiles/{profileId}/stats/ | Profile stats list
*ForestVPNCloudAPI::ProfilesApi* | [**list_profiles**](docs/ProfilesApi.md#list_profiles) | **
GET** /profiles/ | Profile list
*ForestVPNCloudAPI::ProfilesApi* | [**partial_update_profile**](docs/ProfilesApi.md#partial_update_profile) | **
PATCH** /profiles/{profileId}/ | Partial update profile details
*ForestVPNCloudAPI::ProfilesApi* | [**
partial_update_profile_data_usage_limit**](docs/ProfilesApi.md#partial_update_profile_data_usage_limit) | **
PATCH** /profiles/{profileId}/limits/data-usages/{limitId}/ | Partial update profile data usage limit
*ForestVPNCloudAPI::ProfilesApi* | [**update_profile**](docs/ProfilesApi.md#update_profile) | **
PUT** /profiles/{profileId}/ | Update profile details
*ForestVPNCloudAPI::ProfilesApi* | [**
update_profile_data_usage_limit**](docs/ProfilesApi.md#update_profile_data_usage_limit) | **
PUT** /profiles/{profileId}/limits/data-usages/{limitId}/ | Update profile data usage limit

## Documentation for Models

- [ForestVPNCloudAPI::Action](docs/Action.md)
- [ForestVPNCloudAPI::Activity](docs/Activity.md)
- [ForestVPNCloudAPI::Address](docs/Address.md)
- [ForestVPNCloudAPI::Billing](docs/Billing.md)
- [ForestVPNCloudAPI::Country](docs/Country.md)
- [ForestVPNCloudAPI::CreateBillingRequest](docs/CreateBillingRequest.md)
- [ForestVPNCloudAPI::CreateOrUpdateDataUsageLimitRequest](docs/CreateOrUpdateDataUsageLimitRequest.md)
- [ForestVPNCloudAPI::CreateOrUpdatePaymentProfileRequest](docs/CreateOrUpdatePaymentProfileRequest.md)
- [ForestVPNCloudAPI::CreateOrUpdateProfileRequest](docs/CreateOrUpdateProfileRequest.md)
- [ForestVPNCloudAPI::DataUsageLimit](docs/DataUsageLimit.md)
- [ForestVPNCloudAPI::Error](docs/Error.md)
- [ForestVPNCloudAPI::Location](docs/Location.md)
- [ForestVPNCloudAPI::PaymentMethod](docs/PaymentMethod.md)
- [ForestVPNCloudAPI::PaymentProfile](docs/PaymentProfile.md)
- [ForestVPNCloudAPI::Profile](docs/Profile.md)
- [ForestVPNCloudAPI::ProfileStats](docs/ProfileStats.md)
- [ForestVPNCloudAPI::Project](docs/Project.md)
- [ForestVPNCloudAPI::ResourceRef](docs/ResourceRef.md)
- [ForestVPNCloudAPI::User](docs/User.md)

## Documentation for Authorization

### ApiTokenAuth

- **Type**: API key
- **API key parameter name**: X-API-TOKEN
- **Location**: HTTP header

### BearerTokenAuth

- **Type**: Bearer authentication (JWT)

