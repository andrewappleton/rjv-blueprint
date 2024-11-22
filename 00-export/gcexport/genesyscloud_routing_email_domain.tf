resource "genesyscloud_routing_email_domain" "RJV_mypurecloud_ie" {
  domain_id             = "RJV"
  subdomain             = true
  custom_smtp_server_id = "${var.genesyscloud_routing_email_domain_RJV_mypurecloud_ie_custom_smtp_server_id}"
}

