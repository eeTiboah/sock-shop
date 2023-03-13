
resource "null_resource" "copy_files" {
  provisioner "local-exec" {
    command = "cp -r ../deploy/kubernetes/manifests/ ${path.module}/kubernetes/"
  }
}


locals {
    namespace = yamldecode(file("${path.module}/kubernetes/00-sock-shop.yaml"))
}

resource "kubernetes_manifest" "namespace" {
    manifest = local.namespace
}