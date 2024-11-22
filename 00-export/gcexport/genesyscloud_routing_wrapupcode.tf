resource "genesyscloud_routing_wrapupcode" "RJV_Menhir_Complaint" {
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
  name        = "RJV Menhir Complaint"
}

resource "genesyscloud_routing_wrapupcode" "RJV_Menhir_Order" {
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
  name        = "RJV Menhir Order"
}

