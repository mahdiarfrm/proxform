output "vm_ids" {
  description = "The IDs of the newly created VMs"
  value       = { for k, vm in proxmox_vm_qemu.ubuntu_vm : k => vm.vm_id }
}

output "vm_names" {
  description = "The names of the VMs"
  value       = { for k, vm in proxmox_vm_qemu.ubuntu_vm : k => vm.name }
}

output "vm_ip_addresses" {
  description = "The IP addresses of the VMs"
  value       = { for k, vm in proxmox_vm_qemu.ubuntu_vm : k => {
    ip0 = var.vms[k].ip_address0,
    ip1 = var.vms[k].ip_address1,
  } }
}