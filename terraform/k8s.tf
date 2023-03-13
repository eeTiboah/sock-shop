

resource "kubernetes_manifest" "namespace" {
    manifest = yaml(file("../deploy/kubernetes/00-sock-shop.yaml"))
}