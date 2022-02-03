# Hyperflex Cluster
intersight_organization_name = "default"
cluster_name                 = "Montreal"
disk_cleanup                 = "true"
vdi_opt                      = "false"
laz_config                   = "false"
#cluster_action = "Validate"
#cluster_action = "Deploy"

# Management Platform - for standard clusters enter false, for HX Edge clusters enter true
edge_cluster = "true"

# Network Policies
jumbo_frame = "true"

# Uplink speed, only needed for HX Edge clusters. Valid options are 1G or 10G.
uplink_speed = "10G"

# Replication Factor
replication = "3"

# HX Management IP
mgmt_vlan_name = "hx-mgmt-101"
mgmt_vlan_id   = "101"
hx_mgmt_ip     = "1.1.1.100"
hx_ip_start    = "1.1.1.101"
hx_ip_end      = "1.1.1.109"
hx_netmask     = "255.255.255.0"
hx_gateway     = "1.1.1.1"

# MAC prefix
mac_prefix = "00:25:B5:01"

# Storage VLAN
storage_vlan_name = "hx-storage-102"
storage_vlan_id   = "102"

# HXDP Version
hxdp_version = "5.0(1a)"

# UCSM Firmware Version
firmware_version = "4.1(2b)"

# HX password
hx_password = "CIsco123!!"

# ESXi admin account
esx_admin = "root"

# ESXi admin password
esx_password = "CIsco123!!"

# ESXi Management IP
node_prefix   = "montreal"
mgmt_ip_start = "1.1.1.111"
mgmt_ip_end   = "1.1.1.119"
mgmt_netmask  = "255.255.255.0"
mgmt_gateway  = "1.1.1.1"

# Time
timezone = "America/Los_Angeles"
ntp      = ["ntp1.hx.lab.cisco.com", "ntp2.hx.lab.cisco.com"]

# DNS
dns_domain = "hx.lab.cisco.com"
dns        = ["10.29.133.110"]

# UCSM KVM IP
kvm_ip_start = "1.1.1.11"
kvm_ip_end   = "1.1.1.19"
kvm_netmask  = "255.255.255.0"
kvm_gateway  = "1.1.1.1"

# VCenter
vcenter_hostname   = "vcenter.hx.lab.cisco.com"
vcenter_username   = "administrator@vsphere.local"
vcenter_password   = "!Q2w3e4r"
vcenter_datacenter = "Datacenter"

# VMotion
vmotion_vlan_name = "hx-vm-migration-103"
vmotion_vlan_id   = "103"

# Guest VM networks
vm_vlans = [
  {
    name                  = "vm-network-200",
    vlan_id               = "200"
    additional_properties = null
    class_id              = "hyperflex.NamedVlan"
    object_type           = "hyperflex.NamedVlan"
  },
  {
    name                  = "vm-network-201",
    vlan_id               = "201"
    additional_properties = null
    class_id              = "hyperflex.NamedVlan"
    object_type           = "hyperflex.NamedVlan"
  }
]

# FC Additional vHBAs
additional_vHBAs    = "false"
fc_vsan_a_name      = "vsan-10"
fc_vsan_a_id        = "10"
fc_vsan_b_name      = "vsan-20"
fc_vsan_b_id        = "20"
wwxn_prefix         = "20:00:00:25:B5:7F"
fc_wwxn_range_start = "20:00:00:25:B5:7F"
fc_wwxn_range_end   = "20:00:00:25:B5:7F"

# iSCSI Additional vNICs
additional_vNICs  = "false"
iscsi_vlan_a_name = "iscsi-110"
iscsi_vlan_a_id   = "110"
iscsi_vlan_b_name = "iscsi-111"
iscsi_vlan_b_id   = "111"

# Auto Support
auto_support_enable    = "true"
auto_support_recipient = "support@cisco.com"

# Proxy Server
proxy_enable   = "false"
proxy_hostname = "proxy.company.com"
proxy_port     = "80"
proxy_username = "proxy"
proxy_password = "password"


 server_names = {
  "hx1" = { hostname = "hx-01", esx_ip = "1.1.1.111", hx_ip = "1.1.1.101" },
  "hx2" = { hostname = "hx-02", esx_ip = "1.1.1.112", hx_ip = "1.1.1.102" },
  "hx3" = { hostname = "hx-03", esx_ip = "1.1.1.113", hx_ip = "1.1.1.103" },
  "hx4" = { hostname = "hx-04", esx_ip = "1.1.1.114", hx_ip = "1.1.1.104" }
}