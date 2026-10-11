data "mongodbatlas_ai_model_org_api_keys" "ai_model_org_api_keys_lookup" {
  for_each = var.ai_model_org_api_keys_lookup

  org_id = each.value.org_id
}

