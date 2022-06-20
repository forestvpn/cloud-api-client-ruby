# ForestVPNCloudAPI::CreateBillingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **country** | **String** |  |  |
| **payment_profile** | [**CreateOrUpdatePaymentProfileRequest**](CreateOrUpdatePaymentProfileRequest.md) |  |  |

## Example

```ruby
require 'forestvpn_cloud_api'

instance = ForestVPNCloudAPI::CreateBillingRequest.new(
  name: null,
  country: null,
  payment_profile: null
)
```

