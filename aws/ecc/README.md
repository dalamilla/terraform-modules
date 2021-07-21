AWS - Elastic Compute Cloud
=========

A simple terraform module to set up a VM on AWS.

Variables
--------------

| Name     | Type   | Default    | Required |Description                                         | 
| ---------| -------| -----------|----------|----------------------------------------------------|
| **name** | string | -          | Yes      | Name of the intance                                |
| **ami**  | string | -          | Yes      | AMI of the intance                                 |
| **it**   | string | -          | Yes      | Type of the intance                                |
| **epip** | bool   | true       | No       | Enable public IP of the intance                    |
| **subn** | string | -          | Yes      | Subnet name to connect the intance                 |
| **sip**  | string | -          | Yes      | Subnet IP of the intance                           |
| **vsi**  | string | -          | Yes      | Volumen size (GB) of the root block on the intance |
| **vt**   | string | "standard" | No       | Volumen type of the root block on the intance      |
| **cpuc** | string | "standard" | No       | CPU credits of the intance                         |

Outputs
--------------

| Name                  | Description       |
| ----------------------| ------------------|
| **public_dns**        | Public DNS        |
| **public_ip**         | Public IP         |
| **availability_zone** | Availability zone |


Example Usage
----------------

```hcl
module "ecc" {
  source = "./aws/ecc"
  name   = "example"
  ami    = "ami-0d563aeddd4be7fff"
  it     = "t2.micro"
  subn   = "subn-1"
  sip    = "10.0.1.100"
  vsi    = 40
}
```
