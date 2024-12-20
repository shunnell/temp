locals {
  common_tags = {
    CreatedBy    = data.aws_caller_identity.current.arn
    CreationDate = formatdate("YYYY-MM-DD", timestamp())
    Environment  = "development"
    CostCenter   = "dos-core"
    Application  = "eks-cluster"
  }
}
