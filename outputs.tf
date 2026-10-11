output "ai_model_org_api_keys_lookup_org_id" {
  description = "Map of org_id values across all ai_model_org_api_keys_lookup, keyed the same as var.ai_model_org_api_keys_lookup except keys with no org_id are omitted"
  value       = { for k, v in data.mongodbatlas_ai_model_org_api_keys.ai_model_org_api_keys_lookup : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "ai_model_org_api_keys_lookup_results" {
  description = "Map of results values across all ai_model_org_api_keys_lookup, keyed the same as var.ai_model_org_api_keys_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_ai_model_org_api_keys.ai_model_org_api_keys_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

