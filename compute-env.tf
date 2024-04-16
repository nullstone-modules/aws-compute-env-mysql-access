data "ns_connection" "compute-env" {
  name     = "compute-env"
  contract = "cluster/aws/batch"
}

locals {
  security_group_id = data.ns_connection.compute-env.outputs.security_group_id
}
