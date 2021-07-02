GCP - Cloud Storage
=========

A simple terraform module to set up a Object Storage on GCP.

Variables
--------------

| Name         | Type        | Default  | Required |Description                                        |
| -------------| ------------| ---------|----------|---------------------------------------------------|
| **name**     | string      | -        | Yes      | Name of the storage bucket                        |
| **pid**      | string      | -        | Yes      | Project ID of the storage bucket                  |
| **location** | string      | US       | No       | Location of the storage bucket                    |
| **fd**       | bool        | false    | No       | Force destroy of the storage bucket               |
| **sc**       | string      | STANDARD | No       | Storage class of the storage bucket               |
| **ubla**     | bool        | false    | No       | Uniform Bucket Level Access of the storage bucket |
| **venabled** | bool        | false    | No       | Versioning enabled on the storage bucket          |
| **labels**   | map(string) | -        | Yes      | Labels of the storage bucket                      |

Outputs
--------------

| Name                   | Description                     |
| -----------------------| --------------------------------|
| **bucket_self_link**   | Self link of the storage bucket |
| **bucket_url**         | URL  of the storage bucket      |


Example Usage
----------------

```hcl
module "cs" {
  source   = "./gcp/cs"
  name     = "example"
  pid      = "PROJECTID"
  location = "EU"
  fd       = true
  sc       = "ARCHIVE"
  venabled = true

  labels = {
    "key1" = "value1"
    "key2" = "value2"
  }
}
```
