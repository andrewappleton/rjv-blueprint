# This is currently designed to apply the resources to a single Division
# Home is also included for the OAuth Client to allow use of non-Division-aware resources 
data "genesyscloud_auth_division" "ref_division" {
  name = "${var.DIVISION}"
}

data "genesyscloud_auth_division" "ref_home" {
  name = "Home"
}

data "genesyscloud_routing_email_domain" "ref_email_domain" {
  name = "${var.EMAIL_DOMAIN}"
}

data "genesyscloud_user" "ref_userid" {
  email = var.USER_ID
}