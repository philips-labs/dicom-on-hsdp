module "dicom" {
  source  = "philips-labs/dicom/hsdp"
  version = "0.0.4"
  # insert the 3 required variables here
  cdr_base_url           = "https://cdr-dev.us-east.philips-healthsuite.com"
  dicom_store_config_url = "https://dss-config-hsdpeng-dev.us-east.philips-healthsuite.com"
  iam_org_id             = "26e584e2-4147-42c0-aad9-3c70650570f1"
}
