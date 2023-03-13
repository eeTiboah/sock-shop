

locals {
  demo_manifests = yamldecode(file("${path.module}/../deploy/kubernetes/complete-demo.yaml"))
}

resource "kubernetes_manifest" "demo" {
  manifest = local.demo_manifests
  
}