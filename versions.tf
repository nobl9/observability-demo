terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.21.0"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "2.2.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.6.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.12.1"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "3.4.0"
    }

  }

  required_version = ">= 1.0.11"
}

