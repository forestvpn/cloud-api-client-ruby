# ForestVPNCloudAPI::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **city** | **String** | City, district, suburb, town, or village. | [optional] |
| **country** | [**Country**](Country.md) |  | [optional] |
| **line1** | **String** | Address line 1 (e.g., street, PO Box, or company name). | [optional] |
| **line2** | **String** | Address line 2 (e.g., apartment, suite, unit, or building). | [optional] |
| **postal_code** | **String** | ZIP or postal code. | [optional] |
| **state** | **String** | State, county, province, or region. | [optional] |

## Example

```ruby
require 'forestvpn_cloud_api'

instance = ForestVPNCloudAPI::Address.new(
  city: null,
  country: null,
  line1: null,
  line2: null,
  postal_code: null,
  state: null
)
```

