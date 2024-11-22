resource "genesyscloud_routing_wrapupcode" "RJV_Menhir_Complaint" {
  division_id = data.genesyscloud_auth_division.ref_division.id
  name        = "${var.RESOURCE_PREFIX} Menhir Complaint"
}

resource "genesyscloud_routing_wrapupcode" "RJV_Menhir_Order" {
  division_id = data.genesyscloud_auth_division.ref_division.id
  name        = "${var.RESOURCE_PREFIX} Menhir Order"
}

