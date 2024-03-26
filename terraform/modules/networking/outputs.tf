output "vpc_id" {
  description = "The ID of the VPC created"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description   = "The IDs of the private subnets created"
  value         = module.vpc.private_subnets
}