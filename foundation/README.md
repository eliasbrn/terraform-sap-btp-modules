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
| <a name="module_sap-btp-entitlements"></a> [sap-btp-entitlements](#module\_sap-btp-entitlements) | aydin-ozcan/sap-btp-entitlements/btp | 1.0.1 |

## Resources

| Name | Type |
| ---- | ---- |
| [btp_subaccount.this](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount) | resource |
| [btp_subaccount_environment_instance.this](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_environment_instance) | resource |
| [btp_subaccount_role_collection.demo](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection) | resource |
| [cloudfoundry_space.foundation](https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/space) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_landscape_name"></a> [landscape\_name](#input\_landscape\_name) | Name of the Landscape | `string` | n/a | yes |
| <a name="input_subaccount_parent"></a> [subaccount\_parent](#input\_subaccount\_parent) | Directory in which the subaccount is created | `string` | `null` | no |
| <a name="input_subaccount_region"></a> [subaccount\_region](#input\_subaccount\_region) | Region of the Subaccount | `string` | n/a | yes |
| <a name="input_subaccount_stage"></a> [subaccount\_stage](#input\_subaccount\_stage) | Stage of the Subaccount | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_cf_api_url"></a> [cf\_api\_url](#output\_cf\_api\_url) | API URL of the Cloud Foundry Organization |
| <a name="output_cf_org_id"></a> [cf\_org\_id](#output\_cf\_org\_id) | API URL of the Cloud Foundry Organization |
| <a name="output_subaccount_id"></a> [subaccount\_id](#output\_subaccount\_id) | ID of the Subaccount |
