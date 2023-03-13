

locals {
  demo_manifests = file("${path.module}/../deploy/kubernetes/complete-demo.yaml")
}

resource "kubernetes_manifest" "demo" {
  manifest = local.demo_manifests
  
}