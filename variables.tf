/******************************************
 Provider
 *****************************************/
variable "region" {
  type        = string
  default     = "jp-tok"
  description = "Region"
}

/******************************************
 Resource Group, Tags
 *****************************************/
variable "resource_group_name" {
  default     = "Default"
  description = "リソースグループ名"
}

variable "tags" {
  type        = list(string)
  default     = ["terraform"]
  description = "タグ名"
}


/******************************************
 VPC
 *****************************************/
variable "vpc_name" {
  type        = string
  default     = "helloworld-vpc"
  description = "vpc名"
}