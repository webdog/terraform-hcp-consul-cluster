<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route.hcp_peering_private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.hcp_peering_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.peering-public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_security_group.open](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_vpc_peering_connection_accepter.peer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection_accepter) | resource |
| [hcp_aws_network_peering.default](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/aws_network_peering) | resource |
| [hcp_consul_cluster.server](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/consul_cluster) | resource |
| [hcp_consul_cluster_root_token.user](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/consul_cluster_root_token) | resource |
| [hcp_hvn.server](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/hvn) | resource |
| [hcp_hvn_route.peering_route](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/hvn_route) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_account_id"></a> [aws\_account\_id](#input\_aws\_account\_id) | The AWS Account ID | `string` | n/a | yes |
| <a name="input_aws_cidr"></a> [aws\_cidr](#input\_aws\_cidr) | CIDR Block for AWS | `string` | n/a | yes |
| <a name="input_aws_default_route_table_id"></a> [aws\_default\_route\_table\_id](#input\_aws\_default\_route\_table\_id) | The default route table ID for the AWS VPC | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS Region | `string` | n/a | yes |
| <a name="input_aws_vpc_cidr_block"></a> [aws\_vpc\_cidr\_block](#input\_aws\_vpc\_cidr\_block) | The AWS VPC CIDR Block | `string` | n/a | yes |
| <a name="input_aws_vpc_id"></a> [aws\_vpc\_id](#input\_aws\_vpc\_id) | The AWS VPC ID | `string` | n/a | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR block for HVN | `string` | n/a | yes |
| <a name="input_cloud_provider"></a> [cloud\_provider](#input\_cloud\_provider) | Cloud Provider | `string` | `"aws"` | no |
| <a name="input_consul_cluster_datacenter"></a> [consul\_cluster\_datacenter](#input\_consul\_cluster\_datacenter) | Name of the Consul datacenter | `string` | n/a | yes |
| <a name="input_consul_public_endpoint"></a> [consul\_public\_endpoint](#input\_consul\_public\_endpoint) | Publicly accessible endpoint for Consul | `bool` | `true` | no |
| <a name="input_consul_version"></a> [consul\_version](#input\_consul\_version) | Minimum version number of Consul | `string` | `"1.11.2-ent"` | no |
| <a name="input_hcp_consul_tier"></a> [hcp\_consul\_tier](#input\_hcp\_consul\_tier) | Tier of HCP Consul | `string` | n/a | yes |
| <a name="input_hcp_hvn_cidr_block"></a> [hcp\_hvn\_cidr\_block](#input\_hcp\_hvn\_cidr\_block) | The CIDR Block for the HCP HVN | `string` | n/a | yes |
| <a name="input_hcp_region"></a> [hcp\_region](#input\_hcp\_region) | Region for HCP | `string` | n/a | yes |
| <a name="input_hvn_cidr"></a> [hvn\_cidr](#input\_hvn\_cidr) | CIDR Block for HCP | `string` | n/a | yes |
| <a name="input_hvn_id"></a> [hvn\_id](#input\_hvn\_id) | Virtual Network in HCP | `string` | n/a | yes |
| <a name="input_hvn_link"></a> [hvn\_link](#input\_hvn\_link) | A unique URL identifying the HCP Consul cluster. | `string` | n/a | yes |
| <a name="input_hvn_name"></a> [hvn\_name](#input\_hvn\_name) | The name of the HCP HVN | `string` | n/a | yes |
| <a name="input_hvn_peering_identifier"></a> [hvn\_peering\_identifier](#input\_hvn\_peering\_identifier) | The name of the HCP Peering Connection | `string` | n/a | yes |
| <a name="input_private_route_table_ids"></a> [private\_route\_table\_ids](#input\_private\_route\_table\_ids) | Route Table IDs for Private Routes | `list(string)` | n/a | yes |
| <a name="input_public_route_table_ids"></a> [public\_route\_table\_ids](#input\_public\_route\_table\_ids) | Route Table IDs for Public Routes | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_security_group_id"></a> [aws\_security\_group\_id](#output\_aws\_security\_group\_id) | The id of the AWS VPC Security group for HCP HVN Peering |
| <a name="output_consul_ca_file"></a> [consul\_ca\_file](#output\_consul\_ca\_file) | The Consul root CA file |
| <a name="output_consul_cluster_host"></a> [consul\_cluster\_host](#output\_consul\_cluster\_host) | Endpoint to access HCP Consul |
| <a name="output_consul_config_file"></a> [consul\_config\_file](#output\_consul\_config\_file) | The Consul config file to setup the working environment |
| <a name="output_consul_root_token"></a> [consul\_root\_token](#output\_consul\_root\_token) | The Consul root token |
| <a name="output_consul_root_token_accessor_id"></a> [consul\_root\_token\_accessor\_id](#output\_consul\_root\_token\_accessor\_id) | The ID for the for Consul root token |
| <a name="output_consul_root_token_secret_id"></a> [consul\_root\_token\_secret\_id](#output\_consul\_root\_token\_secret\_id) | The secret ID for the Consul root token |
| <a name="output_hcp_vpn_id"></a> [hcp\_vpn\_id](#output\_hcp\_vpn\_id) | ID of the HCP VPN |
| <a name="output_hvn_link"></a> [hvn\_link](#output\_hvn\_link) | URL identifying the HVN |
<!-- END_TF_DOCS -->