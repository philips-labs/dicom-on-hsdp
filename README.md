<img src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="500px">

# HSDP DICOM Store

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hsdp"></a> [hsdp](#requirement\_hsdp) | >= 0.15.2 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dicom"></a> [dicom](#module\_dicom) | C:\git\terraform\terraform-hsdp-dicom |  |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_users"></a> [admin\_users](#input\_admin\_users) | Admin login IDS for DICOM Store | `list(string)` | `[]` | no |
| <a name="input_cdr_base_url"></a> [cdr\_base\_url](#input\_cdr\_base\_url) | CDR Base URL which is provided for DICOM Store onboarding (E.g: https://cdr-example.us-east.philips-healthsuite.com) | `string` | n/a | yes |
| <a name="input_dicom_users"></a> [dicom\_users](#input\_dicom\_users) | User login IDs that should have read and write access to the DICOM Store | `list(string)` | `[]` | no |
| <a name="input_dss_config_url"></a> [dss\_config\_url](#input\_dss\_config\_url) | DICOM Store config URL (Should have received from Onboarding Request) | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment E.g dev, client-test, prod | `string` | n/a | yes |
| <a name="input_iam_url"></a> [iam\_url](#input\_iam\_url) | IAM URL. E.g. https://iam-development.us-east.philips-healthsuite.com | `string` | n/a | yes |
| <a name="input_idm_url"></a> [idm\_url](#input\_idm\_url) | IDM URL. E.g. https://idm-development.us-east.philips-healthsuite.com | `string` | n/a | yes |
| <a name="input_is_instance_shared"></a> [is\_instance\_shared](#input\_is\_instance\_shared) | Is DICOM instance shared? | `bool` | n/a | yes |
| <a name="input_managing_root_definition"></a> [managing\_root\_definition](#input\_managing\_root\_definition) | Managing root configuration | <pre>object({<br>    organization_id                       = string<br>    admin_users                           = list(string)<br>    dicom_users                           = optional(list(string))<br>    s3creds_bucket_name                   = optional(string)<br>    s3creds_product_key                   = optional(string)<br>    force_delete_object_store             = optional(bool)<br>    use_default_object_store_for_all_orgs = optional(bool)<br>    repository_organization_id            = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_oauth2_client_id"></a> [oauth2\_client\_id](#input\_oauth2\_client\_id) | OAauth2 Client Id | `string` | n/a | yes |
| <a name="input_oauth2_password"></a> [oauth2\_password](#input\_oauth2\_password) | OAuth2 Password | `string` | n/a | yes |
| <a name="input_org_admin_password"></a> [org\_admin\_password](#input\_org\_admin\_password) | Organization admin password. | `string` | n/a | yes |
| <a name="input_org_admin_username"></a> [org\_admin\_username](#input\_org\_admin\_username) | Organization admin username. E.g. kareppa.hipparagi@philips.com | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region E.g us-east-1, eu-west-1 | `string` | n/a | yes |
| <a name="input_shared_cdr_service_account_id"></a> [shared\_cdr\_service\_account\_id](#input\_shared\_cdr\_service\_account\_id) | CDR Service Account ID which is shared by HSDP Support team after onboarding to Shared instance | `string` | `null` | no |
| <a name="input_tenant_definitions"></a> [tenant\_definitions](#input\_tenant\_definitions) | List of tenant configurations | <pre>list(object({<br>    managing_root_organization_id = string<br>    tenant_organization_id        = string<br>    admin_users                   = list(string)<br>    dicom_users                   = optional(list(string))<br>    s3creds_bucket_name           = optional(string)<br>    s3creds_product_key           = optional(string)<br>    force_delete_object_store     = optional(bool)<br>    repository_organization_id    = optional(string)<br>  }))</pre> | `[]` | no |

## Outputs

No outputs.
# Contact / Getting help

Post your questions on the `#terraform` HSDP Slack channel

# License

License is MIT
