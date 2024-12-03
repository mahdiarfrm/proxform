provider "proxmox" {
  pm_api_url           = var.pm_api_url
  pm_api_token_id      = var.pm_api_token_id
  pm_api_token_secret  = var.pm_api_token_secret
  pm_user              = var.pm_user
  pm_password          = var.pm_password
  pm_tls_insecure      = var.pm_tls_insecure
}

resource "proxmox_vm_qemu" "ubuntu_vm" {
  for_each    = var.vms
  name        = each.value.name
  target_node = var.proxmox_node

  cores   = each.value.cores
  sockets = each.value.sockets
  memory  = each.value.memory
  cpu     = var.cpu_type

  disk {
    size        = each.value.disk_size
    storage     = var.storage_pool
    type        = "scsi"
    format      = "qcow2"
    import_from = var.qcow2_image_path
  }

  # br0
  network {
    model   = "virtio"
    bridge  = var.bridge0
    # macaddr = each.value.mac_address0
  }

  # br1
  network {
    model   = "virtio"
    bridge  = var.bridge1
    # macaddr = each.value.mac_address1
  }

  # "Cloud-init" configs
  ciuser       = var.ciuser
  cipassword   = var.cipassword
  sshkeys      = file(var.ssh_key_file)
  ipconfig0    = "ip=${each.value.ip_address0}/${each.value.netmask0},gw=${each.value.gateway0}"
  ipconfig1    = "ip=${each.value.ip_address1}/${each.value.netmask1},gw=${each.value.gateway1}"
  nameserver   = var.nameserver
  searchdomain = var.searchdomain
  hostname     = each.value.hostname

  onboot = true
}