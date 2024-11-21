resource "genesyscloud_integration" "RJV__Genesys_Cloud_Data_Actions" {
  config {
    properties = jsonencode({		})
    advanced   = jsonencode({		})
    credentials = {
      # pureCloudOAuthClient = "${genesyscloud_integration_credential.Integration-834b4733-06e6-41cf-994f-db5825a48740.id}"
      pureCloudOAuthClient = genesyscloud_integration_credential.ref_credentials.id
    }
    name = "RJV  Genesys Cloud Data Actions"
  }
  integration_type = "purecloud-data-actions"
  intended_state   = "ENABLED"
}

