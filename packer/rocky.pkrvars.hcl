vsphere_server              = "10.31.136.147"
vsphere_username            = "root@vsphere.local"
vsphere_password            = "VMware1!@"
vsphere_insecure_connection = true

vsphere_datacenter    = null
vsphere_cluster       = null
vsphere_host          = "10.31.136.147"
vsphere_datastore     = "datastore1"
vsphere_folder        = null
vsphere_resource_pool = null
vsphere_network       = "VM Network"

vm_name       = "rocky9-cis"
guest_os_type = "rhel9_64Guest"

iso_path = "[datastore1] iso/Rocky-9.8-x86_64-dvd.iso"

cpus      = 2
memory    = 2048
disk_size = 20480

disk_controller_type  = "pvscsi"
disk_thin_provisioned = true
network_card          = "vmxnet3"
convert_to_template   = false
destroy_after_build   = false

ssh_username = "packer"
ssh_password = "packer"
