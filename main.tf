terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

# Just verifying OpenFaaS namespace exists
data "kubernetes_namespace" "openfaas_fn" {
  metadata {
    name = "openfaas-fn"
  }
}
