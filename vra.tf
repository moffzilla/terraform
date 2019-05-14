provider  "vra7" {
    username = "jason@corp.local"
    password  = "xxxxxxx"
    tenant = "vsphere.local"
    host = "https://vra-01a.corp.local"
    insecure = true
}
resource "vra7_deployment" "my_vra7_deployment" {
  count = 1
  catalog_item_name = "CentOS 6.3"
  description = "Test deployment"
  reasons = "Testing the vRA 7 Terraform plugin"

  deployment_configuration = {
    _leaseDays = "1"
    _number_of_instances = 1
    deployment_property = "custom deployment property"
  }
  wait_timeout = 20
  businessgroup_name = "Development"
}
