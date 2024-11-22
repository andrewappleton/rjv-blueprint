# This is currently designed to apply the resources to a single Division
# Home is also included for the OAuth Client to allow use of non-Division-aware resources 
data "genesyscloud_auth_division" "ref_division" {
  name = "${var.DIVISION}"
}

data "genesyscloud_auth_division" "ref_home" {
  name = "Home"
}