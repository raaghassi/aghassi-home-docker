module "vm_create_from_template_host" {
    source = "./aghassi-home-terraform-shared/vm_create_from_template_host"

    vm_name                     = "${var.vm_name}"
    vsphere_network             = "${var.vsphere_network}"
    vsphere_content_library     = "${var.vsphere_content_library}"
    vm_template                 = "${var.vm_template}"
    hostname                    = "${var.hostname}"
}

module "vsphere_core" {
    source ="./aghassi-home-terraform-shared/vsphere_core"
}

provider "vsphere" {
    user = "${module.vsphere_core.vsphere_user}"
    password = "${module.vsphere_core.vsphere_password}"
    vsphere_server = "${module.vsphere_core.vsphere_server}"
    allow_unverified_ssl = true
}