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
| [btp_subaccount_role_collection.TRIAL_BRC_AuditViewer_R_View](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection) | resource |
| [btp_subaccount_role_collection.TRIAL_PRC_CloudConnector_C_Administrator](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection) | resource |
| [btp_subaccount_role_collection.TRIAL_PRC_Subaccount_C_Administrator](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection) | resource |
| [btp_subaccount_role_collection.TRIAL_PRC_Subaccount_C_LightAdmin_DEV](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection) | resource |
| [btp_subaccount_role_collection.TRIAL_PRC_Subaccount_C_LightAdmin_PRD](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection) | resource |
| [btp_subaccount_role_collection.TRIAL_PRC_Subaccount_C_LightAdmin_QA](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection) | resource |
| [btp_subaccount_role_collection.TRIAL_PRC_Subaccount_R_Space_Developer_DEV](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection) | resource |
| [btp_subaccount_role_collection.TRIAL_PRC_Subaccount_R_Space_Developer_PRD](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection) | resource |
| [btp_subaccount_role_collection.TRIAL_PRC_Subaccount_R_Space_Developer_QA](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection) | resource |
| [btp_subaccount_role_collection.TRIAL_PRC_Subaccount_R_Space_Support](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection) | resource |
| [btp_subaccount_role_collection.TRIAL_PRC_Subaccount_R_Viewer](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_subaccount_stage"></a> [subaccount\_stage](#input\_subaccount\_stage) | Stage of the Subaccount | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_TRIAL_BRC_AuditViewer_R_View_id"></a> [TRIAL\_BRC\_AuditViewer\_R\_View\_id](#output\_TRIAL\_BRC\_AuditViewer\_R\_View\_id) | ID of TRIAL\_BRC\_AuditViewer\_R\_View Role Collection Resource |
| <a name="output_TRIAL_BRC_AuditViewer_R_View_name"></a> [TRIAL\_BRC\_AuditViewer\_R\_View\_name](#output\_TRIAL\_BRC\_AuditViewer\_R\_View\_name) | Name of TRIAL\_BRC\_AuditViewer\_R\_View Role Collection |
| <a name="output_TRIAL_PRC_CloudConnector_C_Administrator_id"></a> [TRIAL\_PRC\_CloudConnector\_C\_Administrator\_id](#output\_TRIAL\_PRC\_CloudConnector\_C\_Administrator\_id) | ID of TRIAL\_PRC\_CloudConnector\_C\_Administrator Role Collection Resource |
| <a name="output_TRIAL_PRC_CloudConnector_C_Administrator_name"></a> [TRIAL\_PRC\_CloudConnector\_C\_Administrator\_name](#output\_TRIAL\_PRC\_CloudConnector\_C\_Administrator\_name) | Name of TRIAL\_PRC\_CloudConnector\_C\_Administrator Role Collection |
| <a name="output_TRIAL_PRC_Subaccount_C_Administrator_id"></a> [TRIAL\_PRC\_Subaccount\_C\_Administrator\_id](#output\_TRIAL\_PRC\_Subaccount\_C\_Administrator\_id) | ID of TRIAL\_PRC\_Subaccount\_C\_Administrator Role Collection Resource |
| <a name="output_TRIAL_PRC_Subaccount_C_Administrator_name"></a> [TRIAL\_PRC\_Subaccount\_C\_Administrator\_name](#output\_TRIAL\_PRC\_Subaccount\_C\_Administrator\_name) | Name of TRIAL\_PRC\_Subaccount\_C\_Administrator Role Collection |
| <a name="output_TRIAL_PRC_Subaccount_C_LightAdmin_DEV_id"></a> [TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_DEV\_id](#output\_TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_DEV\_id) | ID of TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_DEV Role Collection Resource |
| <a name="output_TRIAL_PRC_Subaccount_C_LightAdmin_DEV_name"></a> [TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_DEV\_name](#output\_TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_DEV\_name) | Name of TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_DEV Role Collection |
| <a name="output_TRIAL_PRC_Subaccount_C_LightAdmin_PRD_id"></a> [TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_PRD\_id](#output\_TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_PRD\_id) | ID of TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_PRD Role Collection Resource |
| <a name="output_TRIAL_PRC_Subaccount_C_LightAdmin_PRD_name"></a> [TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_PRD\_name](#output\_TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_PRD\_name) | Name of TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_PRD Role Collection |
| <a name="output_TRIAL_PRC_Subaccount_C_LightAdmin_QA_id"></a> [TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_QA\_id](#output\_TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_QA\_id) | ID of TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_QA Role Collection Resource |
| <a name="output_TRIAL_PRC_Subaccount_C_LightAdmin_QA_name"></a> [TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_QA\_name](#output\_TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_QA\_name) | Name of TRIAL\_PRC\_Subaccount\_C\_LightAdmin\_QA Role Collection |
| <a name="output_TRIAL_PRC_Subaccount_R_Space_Developer_DEV_id"></a> [TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_DEV\_id](#output\_TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_DEV\_id) | ID of TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_DEV Role Collection Resource |
| <a name="output_TRIAL_PRC_Subaccount_R_Space_Developer_DEV_name"></a> [TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_DEV\_name](#output\_TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_DEV\_name) | Name of TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_DEV Role Collection |
| <a name="output_TRIAL_PRC_Subaccount_R_Space_Developer_PRD_id"></a> [TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_PRD\_id](#output\_TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_PRD\_id) | ID of TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_PRD Role Collection Resource |
| <a name="output_TRIAL_PRC_Subaccount_R_Space_Developer_PRD_name"></a> [TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_PRD\_name](#output\_TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_PRD\_name) | Name of TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_PRD Role Collection |
| <a name="output_TRIAL_PRC_Subaccount_R_Space_Developer_QA_id"></a> [TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_QA\_id](#output\_TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_QA\_id) | ID of TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_QA Role Collection Resource |
| <a name="output_TRIAL_PRC_Subaccount_R_Space_Developer_QA_name"></a> [TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_QA\_name](#output\_TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_QA\_name) | Name of TRIAL\_PRC\_Subaccount\_R\_Space\_Developer\_QA Role Collection |
| <a name="output_TRIAL_PRC_Subaccount_R_Space_Support_id"></a> [TRIAL\_PRC\_Subaccount\_R\_Space\_Support\_id](#output\_TRIAL\_PRC\_Subaccount\_R\_Space\_Support\_id) | ID of TRIAL\_PRC\_Subaccount\_R\_Space\_Support Role Collection Resource |
| <a name="output_TRIAL_PRC_Subaccount_R_Space_Support_name"></a> [TRIAL\_PRC\_Subaccount\_R\_Space\_Support\_name](#output\_TRIAL\_PRC\_Subaccount\_R\_Space\_Support\_name) | Name of TRIAL\_PRC\_Subaccount\_R\_Space\_Support Role Collection |
| <a name="output_TRIAL_PRC_Subaccount_R_Viewer_id"></a> [TRIAL\_PRC\_Subaccount\_R\_Viewer\_id](#output\_TRIAL\_PRC\_Subaccount\_R\_Viewer\_id) | ID of TRIAL\_PRC\_Subaccount\_R\_Viewer Role Collection Resource |
| <a name="output_TRIAL_PRC_Subaccount_R_Viewer_name"></a> [TRIAL\_PRC\_Subaccount\_R\_Viewer\_name](#output\_TRIAL\_PRC\_Subaccount\_R\_Viewer\_name) | Name of TRIAL\_PRC\_Subaccount\_R\_Viewer Role Collection |
