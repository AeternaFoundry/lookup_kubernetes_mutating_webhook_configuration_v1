data "kubernetes_mutating_webhook_configuration_v1" "mutating_webhook_configuration_v1_lookup" {
  for_each = var.mutating_webhook_configuration_v1_lookup


  metadata {
    annotations = each.value.metadata.annotations
    labels      = each.value.metadata.labels
    name        = each.value.metadata.name
  }
}

