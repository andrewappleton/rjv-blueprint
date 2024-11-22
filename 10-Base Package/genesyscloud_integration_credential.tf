resource "genesyscloud_integration_credential" "ref_credentials" {
  name = "${var.RESOURCE_PREFIX} Genesys Cloud Data Actions - Credentials"
  credential_type_name = "pureCloudOAuthClient"
  fields = {
    clientId = var.DATA_ACTION_OAUTHCLIENT_ID
    clientSecret = var.DATA_ACTION_OAUTHCLIENT_SECRET
  }
}