## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_cloudfoundry"></a> [cloudfoundry](#provider\_cloudfoundry) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [cloudfoundry_org_role.this](https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/org_role) | resource |
| [cloudfoundry_user.this](https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_cf_org_id"></a> [cf\_org\_id](#input\_cf\_org\_id) | ID of the Cloud Foundry Organization | `string` | n/a | yes |
| <a name="input_origin"></a> [origin](#input\_origin) | Origin used for all created users | `string` | n/a | yes |
| <a name="input_users"></a> [users](#input\_users) | List of Cloud Foundry Users with their e-mail and org roles | `map(list(string))` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_users"></a> [users](#output\_users) | List of all Cloud Foundry users |
| <a name="output_users_with_roles"></a> [users\_with\_roles](#output\_users\_with\_roles) | List of all Cloud Foundry users with assigned org roles |
