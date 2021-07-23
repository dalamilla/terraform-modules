AWS - Relational Database Service
=========

A simple terraform module to set up a DB service on AWS.

Variables
--------------

| Name       | Type      | Default | Required |Description                            |
| -----------| ----------| --------|----------|---------------------------------------|
| **name**   | string    | -       | Yes      | Identifier of the db intance          |
| **insc**   | string    | -       | Yes      | Class of the db intance               |
| **eng**    | string    | -       | Yes      | Engine of the db intance              |
| **engv**   | string    | -       | Yes      | Engine version of the db intance      |
| **alst**   | number    | 20      | No       | Allocate storage of the db intance    |
| **st**     | string    | "gp2"   | No       | Storage type of the db intance        |
| **dbname** | string    | -       | Yes      | Name of the db intance                |
| **dbuser** | string    | -       | Yes      | User of the db intance                |
| **dbpass** | string    | -       | Yes      | Password of the db intance            |
| **dprot**  | bool      | true    | No       | Deletion protection of the db intance |
| **pacc**   | bool      | false   | No       | Publicly accessible of the db intance |
| **sfs**    | bool      | false   | No       | Skip final snapshot of the db intance |

Outputs
--------------

| Name            | Description                                                   |
| ----------------| --------------------------------------------------------------|
| **db_address**  | Hostname of the db instance                                   |
| **db_endpoint** | Connection endpoint of the db instance in address:port format |


Example Usage
----------------

```hcl
module "rds" {
  source = "./aws/rds"
  name   = "exampleterraform"
  insc   = "db.t2.micro"
  eng    = "mysql"
  engv   = "5.7"
  alst   = 30
  dbname = "example"
  dbuser = "userexample"
  dbpass = "YOURSUPERSECUREPASSWORD"
  dprot  = false
  pacc   = true
  sfs    = true
}
```
