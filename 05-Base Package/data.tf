data "genesyscloud_auth_division" "ref_division" {
  name = "${var.DIVISION}"
}

data "genesyscloud_auth_division" "ref_home" {
  name = "Home"
}