terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.6.0"
    }
  }
}

provider "github" {
  app_auth {
    id              = var.utxgo_repository_administration_app_id
    installation_id = var.utxgo_repository_administration_client_id
    pem_file        = var.utxgo_repository_administration_private_key
  }

  owner = "utxgo"
}

resource "github_repository" "cash-cloud" {
  name        = "cash-cloud"
  visibility  = "private"
  auto_init   = true
  license_template = "unlicense"
}
