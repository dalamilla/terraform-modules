GCP - Compute Engine
=========

A simple terraform module to set up a VM on GCP.

Variables
--------------

| Name           | Type         | Default | Required |Description                                  |
| ---------------| -------------| --------|----------|---------------------------------------------|
| **name**       | string       | -       | Yes      | Name of the intance                         |
| **pid**        | string       | -       | Yes      | Project ID of the intance                   |
| **mt**         | string       | -       | Yes      | Machine Type of the intance                 |
| **zon**        | string       | -       | Yes      | Zone of the intance                         |
| **img**        | string       | -       | Yes      | Image of the intance                        |
| **network**    | string       | -       | Yes      | Network name of the intance                 |
| **subnet**     | string       | -       | Yes      | Subnetwork name of the intance              |
| **subnet_pid** | string       | -       | Yes      | Project ID of the subnetwork of the intance |
| **sip**        | string       | -       | Yes      | Subnet IP of the intance                    |
| **pip**        | bool         | false   | No       | Enable public IP in the instance            |
| **meta**       | map(string)  | -       | Yes      | Metadata of the intance                     |
| **tags**       | list(string) | -       | Yes      | Tags of the intance                         |

Outputs
--------------

| Name                   | Description            |
| -----------------------| -----------------------|
| **instance_id**        | ID of the  instance    |
| **public_ip**          | Public IP              |


Example Usage
----------------

```hcl
module "ce" {
  source = "./gcp/ce"
  name   = "example"
  pid    = "PROJECTID"
  mt     = "f1-micro"
  zon    = "us-west1-a"

  img = "ubuntu-os-cloud/ubuntu-2004-lts"

  network    = "example"
  subnet     = "subn-1"
  subnet_pid = "PROJECTID"
  sip        = "192.168.1.10"
  pip        = true

  meta = {
    "ssh-keys" = "pubkey"
  }

  tags = ["tag1", "tag2", "tagn"]
}
```
