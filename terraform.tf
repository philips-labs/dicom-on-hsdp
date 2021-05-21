terraform {
  required_providers {
    hsdp = {
      source  = "philips-software/hsdp"
      version = ">= 0.15.2"
    }
  }
}

terraform {
  experiments = [module_variable_optional_attrs]
}
