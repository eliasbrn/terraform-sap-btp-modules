## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_btp"></a> [btp](#provider\_btp) | n/a |
| <a name="provider_cloudfoundry"></a> [cloudfoundry](#provider\_cloudfoundry) | n/a |

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_btp_role_collection_assignments"></a> [btp\_role\_collection\_assignments](#module\_btp\_role\_collection\_assignments) | SAP/sap-btp-role-collection-assignments/btp | 1.0.1 |
| <a name="module_cf_users"></a> [cf\_users](#module\_cf\_users) | ../cf/users | n/a |
| <a name="module_entitlements"></a> [entitlements](#module\_entitlements) | aydin-ozcan/sap-btp-entitlements/btp | 1.0.1 |
| <a name="module_foundation_role_collections"></a> [foundation\_role\_collections](#module\_foundation\_role\_collections) | ../btp/foundation_role_collections | n/a |

## Resources

| Name | Type |
| ---- | ---- |
| [btp_subaccount.this](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount) | resource |
| [btp_subaccount_environment_instance.this](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_environment_instance) | resource |
| [cloudfoundry_space.foundation](https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/space) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_landscape_name"></a> [landscape\_name](#input\_landscape\_name) | Name of the Landscape | `string` | n/a | yes |
| <a name="input_origin"></a> [origin](#input\_origin) | Origin used for all created users | `string` | `"axafcftur-platform"` | no |
| <a name="input_subaccount_parent"></a> [subaccount\_parent](#input\_subaccount\_parent) | Directory in which the subaccount is created | `string` | `null` | no |
| <a name="input_subaccount_region"></a> [subaccount\_region](#input\_subaccount\_region) | Region of the Subaccount | `string` | n/a | yes |
| <a name="input_subaccount_stage"></a> [subaccount\_stage](#input\_subaccount\_stage) | Stage of the Subaccount | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_cf_api_url"></a> [cf\_api\_url](#output\_cf\_api\_url) | API URL of the Cloud Foundry Organization |
| <a name="output_cf_org_id"></a> [cf\_org\_id](#output\_cf\_org\_id) | ID of the Cloud Foundry Organization |
| <a name="output_cf_org_name"></a> [cf\_org\_name](#output\_cf\_org\_name) | Name of the Cloud Foundry Org |
| <a name="output_list_entitlements"></a> [list\_entitlements](#output\_list\_entitlements) | List of all Entitlements |
| <a name="output_role_collection_name"></a> [role\_collection\_name](#output\_role\_collection\_name) | Name of the Role Collection |
| <a name="output_space_foundation_id"></a> [space\_foundation\_id](#output\_space\_foundation\_id) | ID of the Space |
| <a name="output_space_foundation_name"></a> [space\_foundation\_name](#output\_space\_foundation\_name) | Name of the Space |
| <a name="output_subaccount_id"></a> [subaccount\_id](#output\_subaccount\_id) | ID of the Subaccount |
| <a name="output_subaccount_name"></a> [subaccount\_name](#output\_subaccount\_name) | Name of the subaccount |
| <a name="output_subaccount_subdomain"></a> [subaccount\_subdomain](#output\_subaccount\_subdomain) | Subdomain of the subaccount |
