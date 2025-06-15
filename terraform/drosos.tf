//---------------------------------------------
// Terraform Provider Configuration for Linode
//---------------------------------------------
terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.30.0"
    }
  }
}

//---------------------------------------------
// Linode Provider Authentication
//---------------------------------------------

//We use a personal access token (passed as a variable) to authenticate with the Linode API.
// The value for `var.linode_token` should be set securely via Terraform variables or environment settings.
provider "linode" {
  #configuration options
  token = var.linode_token
}
