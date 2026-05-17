module "eks" {
  # EKS module version 21.20.0 is compatible with Terraform 1.5 and later
  source  = "terraform-aws-modules/eks/aws"
  version = "21.20.0"

  # The name of the EKS cluster. Must be unique within the region and must be 1-100 characters long.
  name                   = local.name
  endpoint_public_access = true

  # The VPC ID and subnets to launch the cluster and worker nodes in. If you don't specify these, the module will create a new VPC with public and private subnets for you.
  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.intra_subnets

  # The Kubernetes version to use for the EKS cluster. If not specified, the latest available version will be used.
  kubernetes_version = "1.34"
  
  addons = {
    vpc-cni = {
      most_recent = true
    }

    kube-proxy = {
      most_recent = true
    }

    coredns = {
      most_recent = true
    }
  }

  # The managed node groups to create. Each node group will be created with the specified configuration and will be automatically scaled based on the desired size and capacity type.
  eks_managed_node_groups = {
    raghu-cluster-ng = {
      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = ["t2.medium"]

      min_size     = 2
      max_size     = 3
      desired_size = 2

      capacity_type = "SPOT"
    }
  }

  # The tags to apply to the EKS cluster and its resources. You can use this to organize and manage your resources in AWS.
  tags = {
    Environment = local.env
    Terraform   = "true"
  }
}