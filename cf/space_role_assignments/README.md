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
| [cloudfoundry_space_role.this](https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/space_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_origin"></a> [origin](#input\_origin) | Origin used for all created users | `string` | n/a | yes |
| <a name="input_space"></a> [space](#input\_space) | ID of the Cloud Foundry space | `string` | n/a | yes |
| <a name="input_space_role_assignments_by_user"></a> [space\_role\_assignments\_by\_user](#input\_space\_role\_assignments\_by\_user) | List of Cloud Foundry Users with their e-mail and space roles | `map(list(string))` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_users_with_roles"></a> [users\_with\_roles](#output\_users\_with\_roles) | List of all Space users with assigned org roles |
