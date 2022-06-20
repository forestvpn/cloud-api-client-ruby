# ForestVPNCloudAPI::DataUsageLimit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **duration** | **String** | Duration in ISO 8601 format. Example P7D - per week |  |
| **value** | **Integer** | Value in bytes. For convert to MegaBytes use formula {value} / (1024 * 1024) |  |
| **scope** | **String** |  |  |

## Example

```ruby
require 'forestvpn_cloud_api'

instance = ForestVPNCloudAPI::DataUsageLimit.new(
  id: null,
  duration: P7D,
  value: null,
  scope: null
)
```

