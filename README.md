<img src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="500px">

# HSDP DICOM Store

## Providers

| Name | Version |
|------|---------|
| hsdp-dicom | > 0.0.4 |

## Terraform Installation
Download terraform from https://www.terraform.io/downloads.html and follow the instructions.

## Running Terraform Scripts
* Clone the repository
* Update the input values in terraform.tfvars. Look for chageMe string and replace with appropriate values.

* `terraform init`
* `terraform plan`
* `terraform apply`

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| iam\_url | The base URL of the IAM | `string` | n/a | yes |
| idm\_url | The base URL of the IDM | `string` | n/a | yes |
| cdr\_base\_url | The base URL of the CDR instance to use for DICOM Store | `string` | n/a | yes |
| dss\_config\_url | The DICOM Store config URL -- Provided by HSDP | `string` | n/a | yes |
| iam\_org\_id | The IAM organization you will be onboarding to DICOM Store | `string` | n/a | yes |
| s3creds\_credentials | S3Creds to use for DICOM Store | <pre>list(object({<br>    endpoint    = string<br>    product_key = string<br>    bucket_name = string<br>    folder_path = string<br>    service_id  = string<br>    private_key = string<br>  }))</pre> | `[]` | no |
| static\_credentials | Static credentials to use for DICOM Store | <pre>list(object({<br>    endpoint    = string<br>    bucket_name = string<br>    access_key  = string<br>    secret_key  = string<br>  }))</pre> | `[]` | no |
| user\_ids | User IDs that should have write access to the DICOM Store | `list(string)` | `[]` | no |


# Contact / Getting help

Post your questions on the `#terraform` HSDP Slack channel

# License

License is MIT
