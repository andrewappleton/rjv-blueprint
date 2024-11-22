# resource "genesyscloud_integration_credential" "Integration-834b4733-06e6-41cf-994f-db5825a48740" {
#   fields               = "${var.genesyscloud_integration_credential_Integration-834b4733-06e6-41cf-994f-db5825a48740_fields}"
#   name                 = "Integration-834b4733-06e6-41cf-994f-db5825a48740"
#   credential_type_name = "pureCloudOAuthClient"
# }

resource "genesyscloud_integration_credential" "ref_credentials" {
  name = "${var.RESOURCE_PREFIX} Genesys Cloud Data Actions"
  credential_type_name = "pureCloudOAuthClient"
  fields = {
    clientId = ""
    clientSecret = ""
  }
}