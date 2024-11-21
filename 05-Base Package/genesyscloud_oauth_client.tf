locals {
  roles = ["Developer","Master Admin","Supervisor","User"]
}

data "genesyscloud_auth_role" "ref_roles" {
  count = length(local.roles)
  name = local.roles[count.index]
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