

locals {
  demo_manifests = yamldecode(file("../deploy/kubernetes/complete-demo.yaml"))
}

resource "kubernetes_manifest" "demo" {
  manifest = local.demo_manifests
  
}