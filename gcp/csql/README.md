GCP - Cloud SQL
=========

A simple terraform module to set up a DB service on GCP.

Variables
--------------

| Name      | Type    | Default | Required |Description                                            |
| ----------| --------| --------|----------|-------------------------------------------------------|
| **name**  | string  | -       | Yes      | Name of the cloud sql instance                        |
| **dbv**   | string  | -       | Yes      | Database Version of the cloud sql instance            |
| **reg**   | string  | -       | Yes      | Region of the cloud sql instance                      |
| **pid**   | string  | -       | Yes      | Project ID of the cloud sql instance                  |
| **delp**  | bool    | true    | No       | Deletion Protection enabled of the cloud sql instance |
| **tier**  | string  | -       | Yes      | Tier  of the cloud sql instance                       |
| **ds**    | number  | 10      | No       | Disk size (GB) of the cloud sql instance              |
| **dt**    | string  | PD_SSD  | No       | Disk Type of the cloud sql instance                   |
| **at**    | string  | -       | Yes      | Availability type of the cloud sql instance           |

Outputs
--------------

| Name                  | Description                                 |
| ----------------------| --------------------------------------------|
| **public_ip_address** | Public IP address of the cloud sql instance |
| **connection_name**   | Connection name of the cloud sql instance   |


Example Usage
----------------

```hcl
module "csql" {
  source = "./gcp/csql"
  name   = "example"
  dbv    = "POSTGRES_11"
  reg    = "us-central1"
  pid    = "PROJECTID"
  delp   = false
  tier   = "db-f1-micro"
  ds     = 30
  dt     = "PD_HDD"
  at     = "ZONAL"
}
```
