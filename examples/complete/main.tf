provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Name      = "observability-demo"
      ManagedBy = "Terraform"
    }
  }
}

provider "kubernetes" {
  host                   = module.observability.cluster_endpoint
  cluster_ca_certificate = base64decode(module.observability.cluster_certificate_authority_data)

  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    command     = "aws"
    # This requires the awscli to be installed locally where Terraform is executed
    args = ["eks", "get-token", "--cluster-name", module.observability.cluster_id]
  }
}

provider "helm" {
  kubernetes {
    host                   = module.observability.cluster_endpoint
    cluster_ca_certificate = base64decode(module.observability.cluster_certificate_authority_data)

    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      command     = "aws"
      # This requires the awscli to be installed locally where Terraform is executed
      args = ["eks", "get-token", "--cluster-name", module.observability.cluster_id]
    }
  }
}

module "observability" {
  source = "../.."
}
