locals {
  flows = fileset(path.module,"flows/*.yaml")
}

resource "genesyscloud_flow" "ref_flows" {
  for_each = local.flows
  filepath = each.value
  file_content_hash = sha256(file(each.value))
  substitutions = {
    var_division        = var.DIVISION 
  }
}