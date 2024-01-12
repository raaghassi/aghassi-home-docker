variable "vm_name" {
    description = "Name of the virtual machine"
    type = string
    default = "docker"
}

variable "vsphere_network" {
    description = "Target network name on vCenter"
    type = string
    default = "VLAN2-SERVER"
}

variable "vsphere_content_library" {
    description = "Name of the content library that the target template lives in"
    type = string
    default = "Templates"
}

variable "vm_template" {
    description = "Name of VM template"
    type = string
    default = "debian11-template (5)"
}

variable "hostname" {
    description = "Hostname of the VM, should be FQDN"
    type = string
    default = "docker.aghassi.home"
}

variable "domain" {
    description = "Domain name to which the VM will be joined"
    type = string
    default = "aghassi.home"
}