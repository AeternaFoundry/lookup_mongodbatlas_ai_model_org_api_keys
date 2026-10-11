variable "ai_model_org_api_keys_lookup" {
  description = <<EOT
Map of ai_model_org_api_keys_lookup, attributes below
Required:
    - org_id
EOT

  type = map(object({
    org_id = string
  }))
}

