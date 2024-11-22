resource "genesyscloud_script" "RJV_Menhir" {
  file_content_hash = "${filesha256("scripts/script-e291692a-2caf-4d3f-9761-147679201b44.json")}"
  filepath          = "scripts/script-e291692a-2caf-4d3f-9761-147679201b44.json"
  script_name       = "${var.RESOURCE_PREFIX} Menhir"
}

