output "region" {
  value = var.region
}

output "resource_group_name" {
  value = var.resource_group_name
}

output "vpc_id" {
  value = ibm_is_vpc.this.id
}
