<img src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="500px">

# HSDP DICOM Store

## Requirements

| Name | Version |
|------|---------|
|[hsdp](https://registry.terraform.io/modules/philips-labs/dicom/hsdp/latest) | >= 0.16.1 |
|[Terraform](https://www.terraform.io/downloads.html) | >= v0.15.1|

## Providers

No providers.

## Modules


## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Possible values: `dev`, `client-test`, `prod`. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Deployment Region. Possible values: `us-east-1`, `eu-west-1` | `string` | n/a | yes |
| <a name="input_is_instance_shared"></a> [is_instance_shared](#input\_is\_instance\_shared) | DICOMStore deployment type.  Possible values: `true`, `false` | `bool` | false | no |
| <a name="input_cdr_base_url"></a> [cdr\_base\_url](#input\_cdr\_base\_url) | CDR Base URL which is provided for DICOM Store onboarding (E.g: https://cdr-example.us-east.philips-healthsuite.com) | `string` | n/a | yes |
| <a name="input_dss_config_url"></a> [dss\_config\_url](#input\_dss\_config\_url) | DICOM Store config URL (Should have received from Onboarding Request) | `string` | n/a | yes |
| <a name="input_iam_url"></a> [iam\_url](#input\_iam\_url) | IAM URL. E.g. https://iam-development.us-east.philips-healthsuite.com | `string` | n/a | yes |
| <a name="input_idm_url"></a> [idm\_url](#input\_idm\_url) | IDM URL. E.g. https://idm-development.us-east.philips-healthsuite.com | `string` | n/a | yes |
| <a name="input_oauth2_client_id"></a> [oauth2\_client\_id](#input\_oauth2\_client\_id) | OAauth2 Client Id | `string` | n/a | yes |
| <a name="input_oauth2_password"></a> [oauth2\_password](#input\_oauth2\_password) | OAuth2 Password | `string` | n/a | yes |
| <a name="input_org_admin_password"></a>
| <a name="input_org_admin_username"></a> [org\_admin\_username](#input\_org\_admin\_username) | Organization admin username. E.g. kareppa.hipparagi@philips.com | `string` | n/a | yes |
[org\_admin\_password](#input\_org\_admin\_password) | Organization admin password. | `string` | n/a | yes |
| <a name="input_managing_root_definition"></a> [managing\_root\_definition](#input\_managing\_root\_definition) | Managing root configuration | <pre>object({<br>  organization_id                       = string<br>  admin_users                           = list(string)<br>  dicom_users                           = optional(list(string))<br>  s3creds_bucket_name                   = optional(string)<br>  s3creds_product_key                   = optional(string)<br>  force_delete_object_store             = optional(bool)<br>  use_default_object_store_for_all_orgs = optional(bool)<br>  repository_organization_id            = optional(string)<br>  shared_cdr_service_account_id         = optional(string)<br>  mpi_endpoint                          = optional(string)<br>})</pre> | `null` | no |
| <a name="input_tenant_definitions"></a> [tenant\_definitions](#input\_tenant\_definitions) | List of tenant configurations | <pre>list(object({<br>  managing_root_organization_id = string<br> tenant_organization_id        = string<br>  admin_users                   = list(string)<br>  dicom_users                   = optional(list(string))<br>  s3creds_bucket_name           = optional(string)<br>  s3creds_product_key           = optional(string)<br>  force_delete_object_store     = optional(bool)<br>  repository_organization_id    = optional(string)<br>}))</pre> | `[]` | no |

## Outputs

No outputs.

## Running Terraform Scripts
* `terraform init`
* `terraform plan`
* `terraform apply`

## Best Practices
* Always run `terraform plan` to understand the resources creation and updates.
* Use `terrraform destroy` very carefully as this will destroy all the existing configurations which are created using `terraform apply`. Not recommended for production use cases.
* Try avoiding the deletion of  the terraform `tfstate` files section which results in destroy of those resources.
* Have secure credentials in var file and provide during the terraform command execution.
Run terraform command with var-file
```bash
$ cat config/secrets.dev.tfvars
oauth2_client_id    = "devOAuthClientId"
oauth2_password     = "devOAuthSecret"
org_admin_username  = "admin@philips.com"
org_admin_password  = "mypassword"
$ terraform plan -var-file=secrets.dev.tfvars
```
With `var-file`, you can easily manage environment (dev/stag/prod) variables.

* Enable version control on terraform state files.
* Manage tfstate files securely
* Turn on debug when you need do troubleshooting
```bash
debug_log          = "c:\\temp\\terrraform.log"
```
* Validate and format terraform code

  Always run `terraform fmt -recursive` to format terraform  files and make them neat.

# Contact / Getting help

Post your questions on the `#terraform` HSDP Slack channel

# License

License is MIT
