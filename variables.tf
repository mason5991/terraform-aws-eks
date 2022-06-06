variable "aws_region" {
  default = "ap-east-1"
  description = "region"
}

variable "aws_vpc_name" {
  description = "AWS VPC name"
}

variable "cluster_name" {
  description = "Kubernetes cluster name"
}

variable "cluster_version" {
  default = "1.22"
  description = "Cluster version"
}

locals {
  name   = var.cluster_name
  region = var.aws_region
  cluster_version = var.cluster_version

  tags = {
    Cluster    = local.name
    Terraform  = "true"
  }
}
