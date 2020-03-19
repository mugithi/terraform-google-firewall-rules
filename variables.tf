variable "rule-name" {
  type          = string
  description   = "Name of the Firewall rule"
}
variable "network" {
  type          = string
  default       = "default"
  description   = "The name or self_link of the network to attach this firewall to"
}
variable "protocol" {
  type          = string
  default       = "tcp"
  description   = "The name of the protocol to allow"
}
variable "ports" {
  type      = list(number)
  default   = []
}
variable "tags" {
  type        = list(string)
  default     = []
  description = "A list of target tags for this firewall"
}
variable "source_ranges" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "A list of source CIDR range to apply this rule."
}