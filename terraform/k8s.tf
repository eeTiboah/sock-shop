
locals {
    namespace = yamldecode(file("../deploy/kubernetes/manifests/00-sock-shop.yaml"))
}

resource "kubernetes_manifest" "namespace" {
    manifest = local.namespace
}