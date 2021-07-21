AWS - Virtual Private Cloud
=========

A simple terraform module to set up a VPC on AWS.

Variables
--------------

| Name            | Type              | Default | Required |Description             |
| ----------------| ------------------| --------|----------|------------------------|
| **name**        | string            | -       | Yes      | Name of the vpc        |
| **cidrb**       | string            | -       | Yes      | CIDR block for the VPC |
| **ednss**       | bool              | true    | No       | Enable DNS support     |
| **ednsh**       | bool              | true    | No       | Enable DNS hostnames   |
| **subnetworks** | list(map(string)) | -       | Yes      | A list of Subnetworks  |

Subnetworks Map Variables
--------------

| Name            | Type   | Default  | Required |Description                    |
| ----------------| -------| ---------|----------|-------------------------------|
| **name**        | string | -        |   Yes    | Name of the subnetwork        |
| **cidrb**       | string | -        |   Yes    | CIDR block for the subnetwork |

Outputs
--------------

| Name             | Description            |
| -----------------| -----------------------|
| **network**      | Network definition     |
| **subnetwork**   | Subnetworks definition |

Example Usage
----------------

```hcl
module "vpc" {
  source = "./aws/vpc"
  name   = "example"
  cidrb  = "10.0.0.0/16"
  subnetworks = [
    {
      "name"  = "subn-1"
      "cidrb" = "10.0.1.0/24"
    },
    {
      "name"  = "subn-2"
      "cidrb" = "10.0.2.0/24"
    }
  ]
}
```
