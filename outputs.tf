# Endpoint to access HCP Consul
output "consul_cluster_host" {
  value = hcp_consul_cluster.server.consul_private_endpoint_url
}

# The Consul config file to setup the working environment
output "consul_config_file" {
  value = hcp_consul_cluster.server.consul_config_file
}

# The Consul root CA file
output "consul_ca_file" {
  value = hcp_consul_cluster.server.consul_ca_file
}

# The ID for the for Consul root token
output "consul_root_token_accessor_id" {
  value = hcp_consul_cluster_root_token.user.accessor_id
}

# The Consul root token
output "consul_root_token" {
  value = hcp_consul_cluster_root_token.user.kubernetes_secret
}

# The secret ID for the Consul root token
output "consul_root_token_secret_id" {
  value = hcp_consul_cluster_root_token.user.secret_id
}

# ID of the HCP VPN
output "hcp_vpn_id" {
  value = hcp_hvn.server.hvn_id
}

# URL identifying the HVN
output "hvn_link" {
  value = hcp_hvn.server.self_link
}

# The id of the AWS VPC Security group for HCP HVN Peering
output "aws_security_group_id" {
  value = aws_security_group.open.id
}