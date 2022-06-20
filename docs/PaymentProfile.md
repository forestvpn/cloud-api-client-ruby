# ForestVPNCloudAPI::PaymentProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **tax_number** | **String** | In some situations, your tax status will determine your tax treatment. | [optional] |
| **business_name** | **String** |  |  |
| **name** | **String** |  |  |
| **address** | [**Address**](Address.md) |  |  |
| **primary_contact_name** | **String** |  |  |
| **primary_contact_phone** | **String** |  |  |
| **primary_contact_email** | **String** |  |  |

## Example

```ruby
require 'forestvpn_cloud_api'

instance = ForestVPNCloudAPI::PaymentProfile.new(
  id: null,
  tax_number: null,
  business_name: null,
  name: null,
  address: null,
  primary_contact_name: null,
  primary_contact_phone: null,
  primary_contact_email: null
)
```

