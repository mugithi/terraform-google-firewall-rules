# terraform-google-firewall

Creates and manages Network Firewall rules on GCP

**Usage**

```hcl
module firewall {
  source = "git::https://github.com/lucaspwk/terraform-google-firewall.git"
  rule-name = "mysql"
  network = "vpc-test"
  protocol = "tcp"
  ports = ["3306"]
  source_ranges = [""]
  tags = [""]
}
```

### Inputs
| Name | Description | Type | Default | Required |
|----------|-------------|:-----:|:-------:|:-------:|
|rule-name|Name of the Firewall rule|String| - |Yes|
|network|Name of the existing network. If leave empty, will be defined the default network. |String| "default" |Yes|
|protocol|Name of the protocol to allow. This value can either be one of the following protocols (tcp, udp, icmp, esp, ah, sctp). If leave empty, will be defined "tcp".|String| "tcp" |Yes|
|ports|List of ports and/or port ranges to allow. It will only be used if the protocol is TCP or UDP|List| - |Yes|
|source_ranges|A list of source IP address ranges (CIDR) that this rule applies to. If leave empty, will be defined from anywhere.|List| "0.0.0.0/0" |Yes|
|tags|A list of tags indicating instances located in the network to be applied for this firewall rule. If no targetTags are specified, the firewall rule applies to all instances on the specified network.|List| - |No|


### Docs

module reference docs: 
- terraform.io (v0.12)
- [Terraform GCP Firewall](https://www.terraform.io/docs/providers/google/r/compute_firewall.html)
- [GMafra](https://github.com/GMafra/terraform-gcp-firewall-rules)


