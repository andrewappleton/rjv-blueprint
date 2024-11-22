data "genesyscloud_auth_role" "ref_roles" {
  count = length(var.ROLES)
  name = var.ROLES[count.index]
}

resource "genesyscloud_oauth_client" "ref_data_actions_oauth_client" {
  name = "${var.RESOURCE_PREFIX} Genesys Cloud Data Actions"
  description = "OAuth Client for Web Integration Deployment"
  authorized_grant_type = "CLIENT-CREDENTIALS"
  dynamic "roles" {
    for_each = {
      for role in data.genesyscloud_auth_role.ref_roles:
        role.id => role
    }
    content {
      division_id = data.genesyscloud_auth_division.ref_division.id
      role_id = roles.value.id
    }
  }
  dynamic "roles" {
    for_each = {
      for role in data.genesyscloud_auth_role.ref_roles:
        role.id => role
    }
    content {
      division_id = data.genesyscloud_auth_division.ref_home.id
      role_id = roles.value.id
    }
  }
}

output "NOTE" {  
  value = format("*** Now make a note of the client-id and client secret for the OAuth Client: %s ***",
    genesyscloud_oauth_client.ref_data_actions_oauth_client.name)
}