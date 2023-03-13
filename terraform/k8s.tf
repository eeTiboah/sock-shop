

resource "kubernetes_manifest" "namespace" {
    manifest = <<EOF
    apiVersion: v1
    kind: Namespace
    metadata:
    name: sock-shop
EOF
}