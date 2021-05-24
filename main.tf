module "dicom" {
  source                   = "philips-labs/dicom/hsdp"
  version                  = "0.1.0"
  region                   = var.region
  dss_config_url           = var.dss_config_url
  cdr_base_url             = var.cdr_base_url
  is_instance_shared       = var.is_instance_shared
  managing_root_definition = var.managing_root_definition
  tenant_definitions       = var.tenant_definitions
}
