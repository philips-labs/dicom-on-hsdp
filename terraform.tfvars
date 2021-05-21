environment = changeMe # client-test, prod
region      = changeMe # us-east-1, eu-west-1

is_instance_shared            = changeMe # true or false
shared_cdr_service_account_id = changeMe
cdr_base_url                  = changeMe
dss_config_url                = changeMe
iam_url                       = changeMe
idm_url                       = changeMe
oauth2_client_id              = changeMe
oauth2_password               = changeMe
org_admin_username            = changeMe
org_admin_password            = changeMe

managing_root_definition = {
  organization_id = changeMe
  admin_users     = [] # list of email ids
}


tenant_definitions = [{
  managing_root_organization_id = changeMe
  tenant_organization_id        = changeMe
  admin_users                   = []
  dicom_users                   = []
  s3creds_bucket_name           = changeMe
  s3creds_product_key           = changeMe
  force_delete_object_store     = false # Recommended false for production envrionments
}]
