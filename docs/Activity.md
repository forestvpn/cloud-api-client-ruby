# ForestVPNCloudAPI::Activity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **action_type** | **String** |  | [optional] |
| **resource_type** | **String** |  |  |
| **user** | [**User**](User.md) |  | [optional] |
| **api_token** | **String** |  | [optional] |
| **project** | [**Project**](Project.md) |  | [optional] |
| **source_ip** | **String** | Source IP Address. Last 3 digits is hidden by security reason. |  |
| **status** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **finished_at** | **Time** |  | [optional] |

## Example

```ruby
require 'forestvpn_cloud_api'

instance = ForestVPNCloudAPI::Activity.new(
  id: null,
  action_type: null,
  resource_type: null,
  user: null,
  api_token: null,
  project: null,
  source_ip: null,
  status: null,
  created_at: null,
  finished_at: null
)
```

