GCP - Virtual Private Cloud
=========

A simple terraform module to set up a VPC on GCP.

Variables
--------------

| Name            | Type              | Default  | Required |Description                      |
| ----------------| ------------------| ---------|----------|---------------------------------|
| **name**        | string            | -        |   Yes    | Name of the network             |
| **pid**         | string            | -        |   Yes    | Id of the project               |
| **acs**         | bool              | true     |   No     | Auto create subnetworks         |
| **rm**          | string            | REGIONAL |   No     | Routing mode                    |
| **mtu**         | number            | 1460     |   No     | Maximum Transfer Unit           |
| **ddroc**       | bool              | false    |   No     | Delete default routes on create |
| **subnetworks** | list(map(string)) | -        |   Yes    | A list of Subnetworks           |

Subnetworks Map Variables
--------------

| Name            | Type   | Default  | Required |Description                      |
| ----------------| -------| ---------|----------|---------------------------------|
| **name**        | string | -        |   Yes    | Name of the subnetwork          |
| **region**      | string | -        |   Yes    | Region of the subnetwork        |
| **ipcdrr**      | string | -        |   Yes    | IP CIDR range of the subnetwork |


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
  source = "./gcp/vpc"
  name   = "example"
  pid    = "PROJECTID"
  acs    = false
  subnetworks = [
    {
      "name"   = "subn-1"
      "ipcdrr" = "192.168.1.0/24"
      "region" = "us-east1"
    },
    {
      "name"   = "subn-2"
      "ipcdrr" = "192.168.2.0/24"
      "region" = "us-east1"
    }
  ]
}
```
