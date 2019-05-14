# terraform
VMware vRA7 Provider for Terraform, Artifacts 

https://www.terraform.io/docs/providers/vra7/r/deployment.html

After Configuration Changes
./terraform init
( Fresh install so the plug-in can be downloaded but also noticed at Configuration changes at vra.tf)

To deploy 
./terraform apply

Status

./terraform show

To Destroy
./terraform destroy

*Note
provider  "vra7" {
    username = "${var.username}"
    password  = "${var.password}"
    tenant = "${var.tenant}"
    host = "${var.host}"
}


