variable "hvn_name" {
  type        = string
  description = "The name of the HCP HVN"
}

variable "aws_vpc_id" {
  type        = string
  description = "The AWS VPC ID"
}

variable "aws_region" {
  type        = string
  description = "The AWS Region"
}

variable "aws_account_id" {
  type        = string
  description = "The AWS Account ID"
}

variable "hvn_peering_identifier" {
  description = "The name of the HCP Peering Connection"
  type        = string
}

variable "aws_vpc_cidr_block" {
  type        = string
  description = "The AWS VPC CIDR Block"
}

#variable "hvn_link" {
#  description = "A unique URL identifying the HCP Consul cluster."
#  type        = string
#}

variable "hcp_hvn_cidr_block" {
  type        = string
  description = "The CIDR Block for the HCP HVN"
}

variable "aws_default_route_table_id" {
  type        = string
  description = "The default route table ID for the AWS VPC"
}

variable "private_route_table_ids" {
  type        = list(string)
  description = "Route Table IDs for Private Routes"
}

variable "public_route_table_ids" {
  type        = list(string)
  description = "Route Table IDs for Public Routes"
}

variable "consul_cluster_datacenter" {
  description = "Name of the Consul datacenter"
  type        = string
}

variable "consul_version" {
  description = "Minimum version number of Consul"
  type = string
  default = "1.11.2-ent"
}

variable "hvn_id" {
  description = "Virtual Network in HCP"
  type        = string
}

variable "consul_public_endpoint" {
  description = "Publicly accessible endpoint for Consul"
  type        = bool
  default     = true
}

variable "hcp_consul_tier" {
  description = "Tier of HCP Consul"
  type        = string
}

variable "cloud_provider" {
  type        = string
  description = "Cloud Provider"
  default     = "aws"
}

variable "hcp_region" {
  type        = string
  description = "Region for HCP"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for HVN"
}

variable "hvn_cidr" {
  type        = string
  description = "CIDR Block for HCP"
}

variable "aws_cidr" {
  type        = string
  description = "CIDR Block for AWS"
}