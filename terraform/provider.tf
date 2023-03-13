

terraform {
  required_version = ">= 1.2.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.10"
    }
    kubernetes = {
      host                   = var.cluster_endpoint
      cluster_ca_certificate = base64decode(var.cluster_ca_cert)
      exec = {
        api_version = "client.authentication.k8s.io/v1beta1"
        args        = ["eks", "get-token", "--cluster-name", var.cluster_name]
        command     = "aws"
      }
    }
  }
}
