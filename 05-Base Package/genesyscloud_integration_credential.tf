resource "genesyscloud_integration_credential" "ref_credentials" {
  name = "${var.RESOURCE_PREFIX} Genesys Cloud Data Actions"
  credential_type_name = "pureCloudOAuthClient"

  fields = {
    clientId = genesyscloud_oauth_client.ref_data_actions_oauth_client.id
    clientSecret = genesyscloud_oauth_client.ref_data_actions_oauth_client.id
  }
}