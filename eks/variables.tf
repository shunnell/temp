variable "ami_worker" {
  description = "AMI for Worker"
  type        = string
  default     = "ami-xxxxxxxxxx"
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "cluster_name" {
  description = "EKS Cluster"
  type        = string
  default     = "cloud-city"
}

variable "cluster_version" {
  description = "Cluster Version"
  type        = string
  default     = "1.30"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.large"
}

variable "node_disk_size" {
  description = "Disk size"
  type        = number
  default     = 200
}

variable "public_subnets" {
  description = "Subnet IP Range"
  type        = list(string)
  default     = ["172.22.1.0/24", "172.22.2.0/24"]
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "sii-ccd-dev-vpc22-us-east1"
}

variable "vpc_cidr" {
  description = "CIDR block"
  type        = string
  default     = "172.22.0.0/16"
}


# make everything a var as much as possible


