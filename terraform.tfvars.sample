pm_api_url    = "https://proxmox.yoursite.com:8006/api2/json"
pm_user       = "root@pam"
pm_password   = "642b6488e10b4275716c"
proxmox_node  = "pve1"
#clone_template = "ubuntu-template"


storage_pool      = "local-lvm"
qcow2_image_path  = "/var/lib/vz/template/qcow2/ubuntu-20.04.qcow2" # scp image to proxmox server

cpu_type = "host"
bridge0  = "vmbr0"
bridge1  = "vmbr1"

# Cloud-init
ciuser      = "ubuntu"
cipassword  = "642b6488e10b4275716c" 
ssh_key_file = "~/.ssh/id_rsa.pub"

nameserver    = "8.8.8.8"
searchdomain  = "google.com"


# VM List :
vms = {
  "vm1" = {
    name         = "ubuntu-vm-01"
    hostname     = "ubuntu-vm-01"
    cores        = 4
    sockets      = 1
    memory       = 4096
    disk_size    = "50G"
    # mac_address0 = "AA:BB:CC:DD:EE:01"
    # mac_address1 = "AA:BB:CC:DD:EE:02"
    ip_address0  = "192.168.1.100"
    netmask0     = "24"
    gateway0     = "192.168.1.1"
    ip_address1  = "10.0.0.100"
    netmask1     = "24"
    gateway1     = "10.0.0.1"
  },
  "vm2" = {
    name         = "ubuntu-vm-02"
    hostname     = "ubuntu-vm-02"
    cores        = 2
    sockets      = 1
    memory       = 2048
    disk_size    = "30G"
    # mac_address0 = "AA:BB:CC:DD:EE:03"
    # mac_address1 = "AA:BB:CC:DD:EE:04"
    ip_address0  = "192.168.1.101"
    netmask0     = "24"
    gateway0     = "192.168.1.1"
    ip_address1  = "10.0.0.101"
    netmask1     = "24"
    gateway1     = "10.0.0.1"
  },
  # Add more "VMs" as needed here!
}