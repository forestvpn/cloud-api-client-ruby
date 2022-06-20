# ForestVPNCloudAPI::CreateOrUpdateDataUsageLimitRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration** | **String** | Duration in ISO 8601 format. Example P7D - per week | [optional] |
| **value** | **Float** | Limit of bytes | [optional] |

## Example

```ruby
require 'forestvpn_cloud_api'

instance = ForestVPNCloudAPI::CreateOrUpdateDataUsageLimitRequest.new(
  duration: P7D,
  value: null
)
```

