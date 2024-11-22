resource "genesyscloud_user" "robert_veenendaal_genesys_com" {
  state       = "active"
  name        = "Robert Jan Veenendaal"
  email       = "robert.veenendaal@genesys.com"
  division_id = "${genesyscloud_auth_division.RJV__Robert_Jan_Veenendaal_.id}"
  routing_languages {
    language_id = "${genesyscloud_routing_language.German_Voice.id}"
    proficiency = 0
  }
  routing_languages {
    language_id = "${genesyscloud_routing_language.English_Voice.id}"
    proficiency = 0
  }
  routing_languages {
    language_id = "${genesyscloud_routing_language.Dutch_Voice.id}"
    proficiency = 0
  }
  routing_languages {
    language_id = "${genesyscloud_routing_language.French_Voice.id}"
    proficiency = 0
  }
  routing_languages {
    language_id = "${genesyscloud_routing_language.RJV_Dutch_Written.id}"
    proficiency = 0
  }
  acd_auto_answer = false
}

