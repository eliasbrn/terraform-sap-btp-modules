## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_btp"></a> [btp](#provider\_btp) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [btp_subaccount.this](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_landscape_name"></a> [landscape\_name](#input\_landscape\_name) | Name of the Landscape | `string` | n/a | yes |
| <a name="input_parent"></a> [parent](#input\_parent) | Directory in which the subaccount is created | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | Region of the Subaccount | `string` | n/a | yes |
| <a name="input_subaccount_stage"></a> [subaccount\_stage](#input\_subaccount\_stage) | Stage of the Subaccount | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_id"></a> [id](#output\_id) | ID of the Subaccount |
