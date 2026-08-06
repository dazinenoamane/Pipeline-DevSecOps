variable "vsphere_server" {
  type = string
  default = ""
}

variable "vsphere_username" {
  type = string
  default = ""
}

variable "vsphere_password" {
  type      = string
  sensitive = true
  default   = ""
}

variable "vsphere_insecure_connection" {
  type    = bool
  default = true
}

variable "vsphere_datacenter" {
  type    = string
  default = null
}

variable "vsphere_cluster" {
  type    = string
  default = null
}

variable "vsphere_host" {
  type    = string
  default = null
}

variable "vsphere_datastore" {
  type = string
  default = ""
}

variable "vsphere_folder" {
  type    = string
  default = null
}

variable "vsphere_resource_pool" {
  type    = string
  default = null
}

variable "vsphere_network" {
  type = string
  default = ""
}

variable "vm_name" {
  type = string
  default = ""
}

variable "guest_os_type" {
  type    = string
  default = "rhel9_64Guest"
}

variable "iso_path" {
  type = string
  default = ""
}

variable "cpus" {
  type    = number
  default = 2
}

variable "memory" {
  type    = number
  default = 4096
}

variable "disk_size" {
  type    = number
  default = 20480
}

variable "disk_controller_type" {
  type    = string
  default = "pvscsi"
}

variable "disk_thin_provisioned" {
  type    = bool
  default = true
}

variable "network_card" {
  type    = string
  default = "vmxnet3"
}

variable "ssh_username" {
  type = string
  default = ""
}

variable "ssh_password" {
  type      = string
  sensitive = true
  default   = ""
}

variable "convert_to_template" {
  type    = bool
  default = false
}

variable "destroy_after_build" {
  type    = bool
  default = false
}
