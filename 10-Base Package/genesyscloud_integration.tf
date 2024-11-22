resource "genesyscloud_integration" "ref_integration" {
  config {
    properties = jsonencode({		})
    advanced   = jsonencode({		})
    credentials = {          
      pureCloudOAuthClient = genesyscloud_integration_credential.ref_credentials.id
    }
    name = "${var.RESOURCE_PREFIX}  Genesys Cloud Data Actions - Integration"
  }
  integration_type = "purecloud-data-actions"
  intended_state   = "ENABLED"
}

