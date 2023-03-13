

locals {
  demo_manifests = file("../deploy/kubernetes/complete-demo.yaml")
}

resource "kubernetes_manifest" "demo" {
  manifest = local.demo_manifests
  
}