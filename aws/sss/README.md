AWS - Simple Storage Service
=========

A simple terraform module to set up a Object Storage on AWS.

Variables
--------------

| Name         | Type        | Default | Required |Description                                       |
| -------------| ------------| --------|----------|--------------------------------------------------|
| **name**     | string      | -       | Yes      | Name of the simple storage service               |
| **acl**      | string      | -       | Yes      | ACL of the simple storage service                |
| **fd**       | bool        | false   | No       | Force destroy of the simple storage service      |
| **venabled** | bool        | false   | No       | Versioning enabled of the simple storage service |
| **tags**     | map(string) | -       | Yes      | Tags of the simple storage service               |

Outputs
--------------

| Name                            | Description                                               |
| --------------------------------| ----------------------------------------------------------|
| **bucket_domain_name**          | Bucket domain name of the simple storage service          |
| **bucket_regional_domain_name** | Bucket regional domain name of the simple storage service |

Example Usage
----------------

```hcl
module "sss" {
  source = "./aws/sss"
  name   = "exampleuniquename"
  acl    = "public-read"
  fd     = true
  tags = {
    tag1 = "tag1"
  }
}
```
