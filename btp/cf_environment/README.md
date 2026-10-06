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
| [btp_subaccount_environment_instance.cloudfoundry](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_environment_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_org_name"></a> [org\_name](#input\_org\_name) | Name of the Cloud Foundry Org | `string` | n/a | yes |
| <a name="input_subaccount_id"></a> [subaccount\_id](#input\_subaccount\_id) | ID of the Subaccount | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_id"></a> [id](#output\_id) | ID of the Cloud Foundry Environment Instance |
