variable "region" {
  description = "Region E.g us-east, eu-west"
  type        = string
}

variable "environment" {
  description = "Environment E.g dev, client_test, prod"
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
  description = "Organization admin username. E.g. k@philips.com"
  type        = string
}

variable "org_admin_password" {
  description = "Organization admin password."
  type        = string
}
variable "iam_url" {
  description = "IAM URL. E.g. https://iam-development.us-east.philips-healthsuite.com"
  type        = string
}
variable "idm_url" {
  description = "IDM URL. E.g. https://idm-development.us-east.philips-healthsuite.com"
  type        = string
}

variable "cdr_base_url" {
  description = "CDR Base URL which is provided for DICOM Store onboarding (E.g: https://cdr-example.us-east.philips-healthsuite.com)"
  type        = string
}

variable "dss_config_url" {
  description = "DICOM Store config URL (Should have received from Onboarding Request)"
  type        = string
}

variable "iam_org_id" {
  description = "IAM organization (GUID) you have provided for DICOM Store onboarding"
  type        = string
}
