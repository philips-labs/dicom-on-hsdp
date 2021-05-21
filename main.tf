module "dicom" {
  # source         = "philips-labs/dicom/hsdp"
  # version        = "0.0.5"
  # count = length(var.tenant_org_ids)
  # count.index
  source                        = "C:\\git\\terraform\\terraform-hsdp-dicom"
  region                        = var.region
  dss_config_url                = var.dss_config_url
  cdr_base_url                  = var.cdr_base_url
  is_instance_shared            = var.is_instance_shared
  managing_root_definition      = var.managing_root_definition
  shared_cdr_service_account_id = var.shared_cdr_service_account_id
  tenant_definitions            = var.tenant_definitions
}
