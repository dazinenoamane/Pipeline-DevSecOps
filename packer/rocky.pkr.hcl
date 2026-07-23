packer {
  required_plugins {
    qemu = {
      version = ">=1.1.0"
    }
  }
}

source "qemu" "rocky" {
  vm_name = var.vm_name

  iso_url = var.iso_path

  memory = var.memory
  cpus   = var.cpus

  disk_size = var.disk_size

  format = "qcow2"

  communicator = "ssh"

  ssh_username = var.ssh_username
  ssh_password = var.ssh_password

  ssh_timeout = "30m"

  http_directory = "./http"

  boot_wait = "10s"

  boot_command = [
  "<up>",
  "e",
  "...",
  "inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ks.cfg",
  "<ctrl-x>"
  ]
}

build {
  sources = [
    "source.qemu.rocky"
  ]
}