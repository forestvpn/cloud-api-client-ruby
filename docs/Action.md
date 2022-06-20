# ForestVPNCloudAPI::Action

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **command** | **String** |  |  |
| **error** | [**Error**](Error.md) |  | [optional] |
| **status** | **String** |  |  |
| **progress** | **Float** |  |  |
| **resources** | [**Array&lt;ResourceRef&gt;**](ResourceRef.md) |  |  |
| **created_at** | **Time** |  |  |
| **finished_at** | **Time** |  | [optional] |

## Example

```ruby
require 'forestvpn_cloud_api'

instance = ForestVPNCloudAPI::Action.new(
  id: null,
  command: null,
  error: null,
  status: null,
  progress: null,
  resources: null,
  created_at: null,
  finished_at: null
)
```

