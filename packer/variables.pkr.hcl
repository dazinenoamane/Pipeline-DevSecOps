variable "vsphere_server" {
  type = string
}

variable "vsphere_username" {
  type = string
}

variable "vsphere_password" {
  type      = string
  sensitive = true
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
}

variable "vm_name" {
  type = string
}

variable "guest_os_type" {
  type    = string
  default = "rhel9_64Guest"
}

variable "iso_path" {
  type = string
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
}

variable "ssh_password" {
  type      = string
  sensitive = true
}

variable "convert_to_template" {
  type    = bool
  default = false
}

variable "destroy_after_build" {
  type    = bool
  default = false
}
