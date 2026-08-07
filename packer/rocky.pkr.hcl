source "vsphere-iso" "rocky9" {
  vcenter_server      = var.vsphere_server
  username            = var.vsphere_username
  password            = var.vsphere_password
  insecure_connection = var.vsphere_insecure_connection

  host          = var.vsphere_host
  datastore     = var.vsphere_datastore
  datacenter    = var.vsphere_datacenter
  cluster       = var.vsphere_cluster
  folder        = var.vsphere_folder
  resource_pool = var.vsphere_resource_pool

  vm_name       = var.vm_name
  guest_os_type = var.guest_os_type

  CPUs = var.cpus
  RAM  = var.memory

  disk_controller_type = [
    var.disk_controller_type
  ]

  storage {
    disk_size             = var.disk_size
    disk_thin_provisioned = var.disk_thin_provisioned
  }

  network_adapters {
    network      = var.vsphere_network
    network_card = var.network_card
  }

  iso_paths = [
    var.iso_path
  ]

  cdrom_type   = "sata"
  remove_cdrom = true

  boot_wait = "5s"

  boot_command = [
    "<tab><wait>",
    " inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ks.cfg",
    "<enter>"
  ]

  http_directory = "http"

  communicator = "ssh"

  ssh_username = var.ssh_username
  ssh_password = var.ssh_password
  ssh_timeout  = "30m"

  shutdown_command = "echo '${var.ssh_password}' | sudo -S shutdown -P now"

  convert_to_template = var.convert_to_template
  destroy             = var.destroy_after_build
}


build {
  sources = [
    "source.vsphere-iso.rocky9"
  ]

  provisioner "ansible" {
    playbook_file      = "${path.root}/../ansible/site.yml"
    skip_version_check = true

    extra_arguments = [
      "-vvv",
      "--extra-vars",
      "ansible_python_interpreter=/usr/bin/python3"
    ]
  }

  provisioner "shell" {
    inline = [
      "echo 'Running OpenSCAP verification'",
      "oscap xccdf eval --profile xccdf_org.ssgproject.content_profile_cis_server_l1 /usr/share/xml/scap/ssg/content/ssg-rl9-ds.xml"
    ]
  }
}