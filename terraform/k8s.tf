
locals {
    namespace = yamldecode(file("${path.module}/kubernetes/manifests/00-sock-shop.yaml"))
}

resource "kubernetes_manifest" "namespace" {
    manifest = local.namespace
}