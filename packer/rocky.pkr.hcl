source "proxmox-iso" "rocky9" {

  proxmox_url = var.proxmox_url

  username = var.proxmox_token_id
  token    = var.proxmox_token_secret


  node = var.proxmox_node


  vm_id = var.vm_id


  vm_name = var.vm_name


  iso_file = var.iso_file


  cores  = var.cores
  memory = var.memory


  disks {
    disk_size = var.disk_size
    storage   = var.storage
    type      = "scsi"
  }


  network_adapters {
    model = "virtio"
  }


  boot_wait = "10s"


  boot_command = [
    "<esc><wait>",
    "linux inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ks.cfg<enter>"
  ]


  http_directory = "http"


  ssh_username = var.ssh_username
  ssh_password = var.ssh_password

  ssh_timeout = "30m"
}


build {

  sources = [
    "source.proxmox-iso.rocky9"
  ]


  provisioner "ansible" {

    playbook_file = "../ansible/site.yml"
  }


  provisioner "shell" {

    inline = [
      "echo 'Running OpenSCAP verification'",
      "oscap xccdf eval --profile xccdf_org.ssgproject.content_profile_cis_server_l1 /usr/share/xml/scap/ssg/content/ssg-rl9-ds.xml"
    ]
  }

}