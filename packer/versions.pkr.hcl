packer {
  required_plugins {
    ansible = {
      version = ">= 1.1.4"
      source  = "github.com/hashicorp/ansible"
    }

    vsphere = {
      version = "= 2.1.2"
      source  = "github.com/vmware/vsphere"
    }
  }
}
