/******************************************
 Resource Group
 *****************************************/
data "ibm_resource_group" "this" {
  name = var.resource_group_name
}


/******************************************
 VPC
 *****************************************/
resource "ibm_is_vpc" "this" {
  name           = var.vpc_name
  resource_group = data.ibm_resource_group.this.id
  tags           = var.tags
}


/******************************************
 Subnet
 *****************************************/
locals {
  zone_count=3
}
resource "ibm_is_vpc_address_prefix" "zone" {
  count = local.zone_count
  cidr = format("10.0.%s.0/24", count.index+1) # 10.0.1.0/24
  name = format("%s-add-prefix-zone%s", var.vpc_name, count.index+1) 
  vpc  = ibm_is_vpc.this.id
  zone = format("%s-%s", var.region, count.index+1) # jp-tok-1
}

resource "ibm_is_subnet" "zone" {
  count = local.zone_count
  depends_on = [
    ibm_is_vpc_address_prefix.zone
  ]
  ipv4_cidr_block = format("10.0.%s.0/24", count.index+1) # 10.0.1.0/24
  name            = format("%s-subnet-zone%s", var.vpc_name, count.index+1)

  vpc  = ibm_is_vpc.this.id
  zone = format("%s-%s", var.region, count.index+1) # jp-tok-1
}
