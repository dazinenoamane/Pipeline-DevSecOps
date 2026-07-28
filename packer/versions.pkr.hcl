packer {
  required_plugins {
    ansible = {
      version = ">= 1.1.4"
      source  = "github.com/hashicorp/ansible"
    }

    proxmox = {
      version = ">= 1.2.0"
      source  = "github.com/hashicorp/proxmox"
    }
  }
}