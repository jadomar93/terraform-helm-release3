
resource "helm_release" "application" {
  name       = "terraform-helm-app"
  namespace  = "default"
  chart      = "${path.module}/application"
  wait       = false
  values = [
    var.values_yaml
  ]
}

