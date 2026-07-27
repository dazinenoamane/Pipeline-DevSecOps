variable "proxmox_url" {
  type = string
}

variable "proxmox_token_id" {
  type = string
}

variable "proxmox_token_secret" {
  type      = string
  sensitive = true
}


variable "proxmox_node" {
  type = string
}


variable "vm_id" {
  type = number
}


variable "vm_name" {
  type = string
}


variable "iso_file" {
  type = string
}


variable "storage" {
  type = string
}


variable "cores" {
  type    = number
  default = 2
}


variable "memory" {
  type    = number
  default = 4096
}


variable "disk_size" {
  type    = string
  default = "20G"
}


variable "ssh_username" {
  type = string
}


variable "ssh_password" {
  type      = string
  sensitive = true
}