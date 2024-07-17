variable "local_network" {
  description = "Resource link of the network to add a peering to."
  type        = string
}

variable "peer_network" {
  description = "Resource link of the peer network."
  type        = string
}

variable "export_peer_custom_routes" {
  description = "Export custom routes to local network from peer network."
  type        = bool
  default     = false
}

variable "export_local_custom_routes" {
  description = "Export custom routes to peer network from local network."
  type        = bool
  default     = false
}

variable "export_peer_subnet_routes_with_public_ip" {
  description = "Export custom routes to local network from peer network (defaults to false; causes the Local Peering Connection to align with the [provider default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network_peering#import_subnet_routes_with_public_ip), and the Remote Peering Connection to be opposite the provider default)."
  type        = bool
  default     = false
}

variable "export_local_subnet_routes_with_public_ip" {
  description = "Export custom routes to peer network from local network (defaults to true; causes the Local Peering Connection to align with the [provider default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network_peering#export_subnet_routes_with_public_ip), and the Remote Peering Connection to be opposite the provider default)."
  type        = bool
  default     = true
}

variable "module_depends_on" {
  description = "List of modules or resources this module depends on."
  type        = list(any)
  default     = []
}

variable "stack_type" {
  description = "Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. Possible values: [\"IPV4_ONLY\", \"IPV4_IPV6\"]."
  type        = string
  default     = "IPV4_ONLY"
}
variable "vpc_1_name" {
  type        = string
  default     = ""
  description = "The name of the virtual network. Changing this forces a new resource to be created."
}

variable "vpc_2_name" {
  type        = string
  default     = ""
  description = "The name of the virtual network. Changing this forces a new resource to be created."
}

variable "peering_enabled" {
  description = "peering_enabled in true  for  resource to be created."
  type        = bool
  default     = true
}
