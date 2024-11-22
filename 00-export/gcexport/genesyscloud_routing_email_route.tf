resource "genesyscloud_routing_email_route" "testRJV_mypurecloud_ie" {
  from_name = "RJV Menir"
  pattern   = "test"
  domain_id = "${genesyscloud_routing_email_domain.RJV_mypurecloud_ie.id}"
  flow_id   = "${genesyscloud_flow.INBOUNDEMAIL_RJV_Menir.id}"
}

