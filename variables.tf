variable "region" {
  description = "Region E.g us-east-1, eu-west-1"
  type        = string
}

variable "environment" {
  description = "Environment E.g dev, client-test, prod"
  type        = string
}

variable "oauth2_client_id" {
  description = "OAauth2 Client Id"
  type        = string
}

variable "oauth2_password" {
  description = "OAuth2 Password"
  type        = string
}

variable "org_admin_username" {
  description = "Organization admin username. E.g. kareppa.hipparagi@philips.com"
  type        = string
}

variable "org_admin_password" {
  description = "Organization admin password."
  type        = string
  sensitive   = true
}

variable "iam_url" {
  description = "IAM URL. E.g. https://iam-development.us-east.philips-healthsuite.com"
  type        = string
  validation {
    condition     = can(regex("^https://iam", var.iam_url))
    error_message = "The iam_url value must be a valid base url, starting with \"https://iam\" (E.g: https://iam-development.us-east.philips-healthsuite.com)."
  }
}

variable "idm_url" {
  description = "IDM URL. E.g. https://idm-development.us-east.philips-healthsuite.com"
  type        = string
  validation {
    condition     = can(regex("^https://idm", var.idm_url))
    error_message = "The idm_url value must be a valid base url, starting with \"https://idm\" (E.g: https://idm-development.us-east.philips-healthsuite.com)."
  }
}

variable "cdr_base_url" {
  description = "CDR Base URL which is provided for DICOM Store onboarding (E.g: https://cdr-example.us-east.philips-healthsuite.com)"
  type        = string
  validation {
    condition     = can(regex("^https://", var.cdr_base_url))
    error_message = "The cdr_base_url value must be a valid base url, starting with \"https://\" (E.g: https://cdr-example.us-east.philips-healthsuite.com)."
  }
}

variable "dss_config_url" {
  description = "DICOM Store config URL (Should have received from Onboarding Request)"
  type        = string
  validation {
    condition     = can(regex("^https://dss-config", var.dss_config_url))
    error_message = "The dss_config_url value must be a valid url, starting with \"https://dss-config\" (E.g: https://dss-config-hsp-dev.us-east.philips-healthsuite.com)."
  }
}

variable "dicom_users" {
  description = "User login IDs that should have read and write access to the DICOM Store"
  type        = list(string)
  default     = []
}

variable "admin_users" {
  description = "Admin login IDS for DICOM Store"
  type        = list(string)
  default     = []
}

variable "is_instance_shared" {
  description = "Is DICOM instance shared?"
  type        = bool
  default     = false
}

variable "managing_root_definition" {
  description = "Managing root configuration"
  type = object({
    organization_id                       = string
    admin_users                           = list(string)
    dicom_users                           = optional(list(string))
    s3creds_bucket_name                   = optional(string)
    s3creds_product_key                   = optional(string)
    force_delete_object_store             = optional(bool)
    use_default_object_store_for_all_orgs = optional(bool)
    repository_organization_id            = optional(string)
    shared_cdr_service_account_id         = optional(string)
    mpi_endpoint                          = optional(string)
  })
  default = null
}

# variable "shared_cdr_service_account_id" {
#   description = "CDR Service Account ID which is shared by HSDP Support team after onboarding to Shared instance"
#   type        = string
#   default     = null
# }

variable "tenant_definitions" {
  description = "List of tenant configurations"
  type = list(object({
    managing_root_organization_id = string
    tenant_organization_id        = string
    admin_users                   = list(string)
    dicom_users                   = optional(list(string))
    s3creds_bucket_name           = optional(string)
    s3creds_product_key           = optional(string)
    force_delete_object_store     = optional(bool)
    repository_organization_id    = optional(string)
  }))
  default = []
}
