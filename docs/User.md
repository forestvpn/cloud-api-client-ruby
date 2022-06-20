# ForestVPNCloudAPI::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **username** | **String** |  |  |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** |  |  |
| **email_verified** | **Boolean** |  |  |
| **photo_url** | **String** |  | [optional] |
| **date_joined** | **Time** |  |  |

## Example

```ruby
require 'forestvpn_cloud_api'

instance = ForestVPNCloudAPI::User.new(
  id: null,
  username: null,
  first_name: null,
  last_name: null,
  email: null,
  email_verified: null,
  photo_url: null,
  date_joined: null
)
```

