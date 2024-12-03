variable "pm_api_url" {
  description = "Proxmox API URL"
}

variable "pm_api_token_id" {
  description = "Proxmox Token ID"
}

variable "pm_api_token_secret" {
  description = "Proxmox Token Secret"
}

variable "pm_user" {
  description = "Proxmox username"
}

variable "pm_password" {
  description = "Proxmox password"
  sensitive   = true
}

variable "pm_tls_insecure" {
  description = "TLS insecure setting"
  type        = bool
  default     = true
}

variable "proxmox_node" {
  description = "Proxmox node to deploy the VMs"
}

variable "vms" {
  description = "Map of VM configurations"
  type = map(object({
    name         = string
    hostname     = string
    cores        = number
    sockets      = number
    memory       = number
    disk_size    = string
    mac_address0 = string
    mac_address1 = string
    ip_address0  = string
    netmask0     = string
    gateway0     = string
    ip_address1  = string
    netmask1     = string
    gateway1     = string
  }))
}

variable "cpu_type" {
  description = "Type of CPU"
  default     = "host"
}

variable "storage_pool" {
  description = "Storage pool for the VM disks"
}

variable "qcow2_image_path" {
  description = "Path to the qcow2 image on the Proxmox node"
}

variable "bridge0" {
  description = "Bridge for the first network interface"
  default     = "vmbr0"
}

variable "bridge1" {
  description = "Bridge for the second network interface"
  default     = "vmbr1"
}

variable "ciuser" {
  description = "Cloud-init username"
  default     = "ubuntu"
}

variable "cipassword" {
  description = "Cloud-init user password"
  sensitive   = true
}

variable "ssh_key_file" {
  description = "Path to the SSH public key file"
  default     = "~/.ssh/id_rsa.pub"
}

variable "nameserver" {
  description = "DNS nameserver"
}

variable "searchdomain" {
  description = "DNS search domain"
}