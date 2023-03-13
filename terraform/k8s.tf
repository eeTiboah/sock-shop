

resource "kubernetes_manifest" "namespace" {
    manifest = yamldecode(file("../deploy/kubernetes/00-sock-shop.yaml"))
}