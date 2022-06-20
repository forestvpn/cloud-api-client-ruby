# ForestVPNCloudAPI::Profile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **external_key** | **String** |  |  |
| **status** | **String** |  | [default to &#39;suspended&#39;] |
| **secret_key** | **String** | A secret key that should be used along with ID in ForestVPN Cloud VPN SDK. |  |
| **metadata** | **Hash&lt;String, String&gt;** | Set of key-value pairs that you can attach to an object. This can be useful for storing  additional information about the object in a structured format. Individual keys can be unset  by posting an empty value to them. All keys can be unset by posting an empty value to metadata.  |  |

## Example

```ruby
require 'forestvpn_cloud_api'

instance = ForestVPNCloudAPI::Profile.new(
  id: null,
  external_key: null,
  status: null,
  secret_key: null,
  metadata: null
)
```

