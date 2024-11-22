resource "genesyscloud_routing_email_route" "testRJV_mypurecloud_ie" {
  from_name = var.EMAIL_FROM_NAME
  pattern   = var.EMAIL_ADDRESS
  domain_id = data.genesyscloud_routing_email_domain.ref_email_domain.id
#   flow_id   = "${genesyscloud_flow.INBOUNDEMAIL_RJV_Menir.id}"  
}

