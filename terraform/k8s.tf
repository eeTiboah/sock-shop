

resource "kubernetes_manifest" "namespace" {
    manifest = yamldecode(file("../deploy/kubernetes/manifests/00-sock-shop.yaml"))
}