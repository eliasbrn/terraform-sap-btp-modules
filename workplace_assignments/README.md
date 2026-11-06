## Description



## Overview of SAP IdM Workplaces 

### SPInE Foundation Team
1. BTP_<Account_Name>_SPINE_GA_ADMIN      --> BTP_TRIAL_SPINE_GA_ADMIN
2. BTP_<Account_Name>_SPINE_GA_SUPPORT    --> BTP_TRIAL_SPINE_GA_SUPPORT 
3. BTP_CF_SPINE_ADMIN                    
4. BTP_CF_SPINE_SUPPORT 
### <Functional Area> CF Subaccount
1. SPINE_CF_SUBACC_ADMIN
2. SPINE_CF_SUBACC_ADMIN_LIGHT
3. SPINE_CF_SUBACC_USERAUTHADMIN_LIGHT
### <Functional Area> CF Subaccount - Exception Workplaces
1. SPINE_CF_SUBACC_USERAUTHADMIN_Q
2. SPINE_CF_SUBACC_USERAUTHADMIN_I
3. SPINE_CF_SUBACC_USERAUTHADMIN_P
### <Functional Area> CF Spaces
1. BTP_CF_SPACE_DEVELOP
2. BTP_CF_SPACE_SUPPORT

## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_btp"></a> [btp](#provider\_btp) | n/a |

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_btp_role_collection_assignments"></a> [btp\_role\_collection\_assignments](#module\_btp\_role\_collection\_assignments) | SAP/sap-btp-role-collection-assignments/btp | 1.0.1 |
| <a name="module_cf_org_role_assignments"></a> [cf\_org\_role\_assignments](#module\_cf\_org\_role\_assignments) | ../cf/org_role_assignments | n/a |
| <a name="module_cf_space_role_assignments"></a> [cf\_space\_role\_assignments](#module\_cf\_space\_role\_assignments) | ../cf/space_role_assignments | n/a |

## Resources

| Name | Type |
| ---- | ---- |
| [btp_directory_role_collection_assignment.dir_admin](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/directory_role_collection_assignment) | resource |
| [btp_globalaccount_role_collection_assignment.ga_admin](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/globalaccount_role_collection_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_cf_org_id"></a> [cf\_org\_id](#input\_cf\_org\_id) | ID of the Cloud Foundry Organization | `string` | n/a | yes |
| <a name="input_directory_id"></a> [directory\_id](#input\_directory\_id) | ID of the Directory | `string` | `null` | no |
| <a name="input_origin"></a> [origin](#input\_origin) | Origin used for all created users | `string` | n/a | yes |
| <a name="input_subaccount_id"></a> [subaccount\_id](#input\_subaccount\_id) | ID of the Subaccount | `string` | n/a | yes |
| <a name="input_subaccount_stage"></a> [subaccount\_stage](#input\_subaccount\_stage) | Stage of the Subaccount | `string` | n/a | yes |
| <a name="input_workplace_assignments_by_user"></a> [workplace\_assignments\_by\_user](#input\_workplace\_assignments\_by\_user) | List of Users with their e-mail and SAP IdM workplace | `map(list(string))` | n/a | yes |

## Outputs

No outputs.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_btp"></a> [btp](#provider\_btp) | n/a |

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_btp_role_collection_assignments"></a> [btp\_role\_collection\_assignments](#module\_btp\_role\_collection\_assignments) | SAP/sap-btp-role-collection-assignments/btp | 1.0.1 |
| <a name="module_cf_org_role_assignments"></a> [cf\_org\_role\_assignments](#module\_cf\_org\_role\_assignments) | ../cf/org_role_assignments | n/a |
| <a name="module_cf_space_role_assignments"></a> [cf\_space\_role\_assignments](#module\_cf\_space\_role\_assignments) | ../cf/space_role_assignments | n/a |

## Resources

| Name | Type |
| ---- | ---- |
| [btp_directory_role_collection_assignment.dir_admin](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/directory_role_collection_assignment) | resource |
| [btp_globalaccount_role_collection_assignment.ga_admin](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/globalaccount_role_collection_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_cf_org_id"></a> [cf\_org\_id](#input\_cf\_org\_id) | ID of the Cloud Foundry Organization | `string` | n/a | yes |
| <a name="input_cf_spaces"></a> [cf\_spaces](#input\_cf\_spaces) | List of all Cloud Foundry Space IDs in the subaccount | `list(string)` | n/a | yes |
| <a name="input_directory_id"></a> [directory\_id](#input\_directory\_id) | ID of the Directory | `string` | `null` | no |
| <a name="input_subaccount_id"></a> [subaccount\_id](#input\_subaccount\_id) | ID of the Subaccount | `string` | n/a | yes |
| <a name="input_subaccount_stage"></a> [subaccount\_stage](#input\_subaccount\_stage) | Stage of the Subaccount | `string` | n/a | yes |
| <a name="input_user_origin"></a> [user\_origin](#input\_user\_origin) | Origin used for all created users | `string` | n/a | yes |
| <a name="input_workplace_assignments_by_user"></a> [workplace\_assignments\_by\_user](#input\_workplace\_assignments\_by\_user) | List of Users with their e-mail and SAP IdM workplace | `map(list(string))` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_role_collection_assignments"></a> [role\_collection\_assignments](#output\_role\_collection\_assignments) | n/a |
| <a name="output_subaccount_stage"></a> [subaccount\_stage](#output\_subaccount\_stage) | n/a |
| <a name="output_user_workplaces"></a> [user\_workplaces](#output\_user\_workplaces) | n/a |
| <a name="output_users_with_workplaces"></a> [users\_with\_workplaces](#output\_users\_with\_workplaces) | List of all users with assigned SAP IdM Workplaces |
<!-- END_TF_DOCS -->