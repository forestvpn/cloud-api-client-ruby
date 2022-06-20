# ForestVPNCloudAPI::CreateOrUpdateProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_key** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **status** | **String** |  | [optional][default to &#39;suspended&#39;] |

## Example

```ruby
require 'forestvpn_cloud_api'

instance = ForestVPNCloudAPI::CreateOrUpdateProfileRequest.new(
  external_key: null,
  metadata: null,
  status: null
)
```

