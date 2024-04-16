data "ns_connection" "mysql" {
  name     = "mysql"
  contract = "datastore/aws/mysql"
}

locals {
  db_endpoint          = data.ns_connection.mysql.outputs.db_endpoint
  db_subdomain         = split(":", local.db_endpoint)[0]
  db_port              = split(":", local.db_endpoint)[1]
  db_security_group_id = data.ns_connection.mysql.outputs.db_security_group_id
}
