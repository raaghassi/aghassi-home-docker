variable "numcpu" {
    description = "Number of CPUs (overrides template)"
    type = string
    default = "4"
}

variable "memory" {
    description = "RAM size in megabytes (overrides template)"
    type = string
    default = "4096"
}