module "dicom" {
  source         = "philips-labs/dicom/hsdp"
  version        = "0.0.5"
  iam_org_id     = var.iam_org_id
  dss_config_url = var.dss_config_url
  cdr_base_url   = var.cdr_base_url
}
