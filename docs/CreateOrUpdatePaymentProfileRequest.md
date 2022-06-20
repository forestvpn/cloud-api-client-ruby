# ForestVPNCloudAPI::CreateOrUpdatePaymentProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_number** | **String** | In some situations, your tax status will determine your tax treatment. | [optional] |
| **business_name** | **String** |  |  |
| **name** | **String** |  |  |
| **address_line1** | **String** |  |  |
| **address_line2** | **String** |  | [optional] |
| **address_line3** | **String** | Administrative area. Usually it is city or region. |  |
| **primary_contact_name** | **String** |  |  |
| **primary_contact_phone** | **String** |  |  |
| **primary_contact_email** | **String** |  |  |

## Example

```ruby
require 'forestvpn_cloud_api'

instance = ForestVPNCloudAPI::CreateOrUpdatePaymentProfileRequest.new(
  tax_number: null,
  business_name: null,
  name: null,
  address_line1: null,
  address_line2: null,
  address_line3: null,
  primary_contact_name: null,
  primary_contact_phone: null,
  primary_contact_email: null
)
```

