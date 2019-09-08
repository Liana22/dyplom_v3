variable "location" {
    description = "Specify region of Azure Virtual Machines."
    default     = "westeurope"
}

variable "resource_group" {
    description = "Specify resource group of Azure Virtual Machines."  
    default = "nsg-resource-group"
}

variable "private_ip_addresses" {
    description = "Specify list if private_ips assigned to each VMs respectively"  
    type    = "list"
    default = ["10.0.1.0", "10.0.2.0", "10.0.3.0"]
}
variable "nsg_id" {
    description = "Specify Network Security Group ID attached to the subnet."
    default = "3" 
}

variable "availability_set_name" {
    description = "Name of the Availability Set."
    default = "default"
}

variable "subnet_id" {
    description = "Specify ID of the subnet."
    default = "3"     
}

variable "nb_instances" {
    description = "Specify number of vms to be created."
    default = "3"
}
 variable "ssh_path" {
     description = "Pass public SSH path for each VM" 
      type    = "list"
      default  = ["/home/host0/.ssh/authorized_keys","/home/host1/.ssh/authorized_keys", "/home/host2/.ssh/authorized_keys"]
 }
 variable "ssh_key" {
     description = "Pass public SSH key for each VM" 
      type    = "list"
      default  = ["~/ssh/idrsa0.pub","~/ssh/idrsa1.pub", "~/ssh/idrsa2.pub"]

    #  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDKzvYzkJy9idWCLS+bfV0u/fCiJgCXWqiDKfoYlduJy1cnfO7G5YS1W147CyrUXZqglu3qqTYgL1/f1URgL+QfXJX+BI9/g7Ol2+vd0aixnzs/mnEADMXMCEjGHtTG//zSZ8vDY0XtzPX+EOA9YUy3RJx4z/jQBBVaR9ZlJ+PxcMohXf0KDL3xcUYakOyZAxZAJQDgnE28yJgE/OToKu4C7BSq6Ei5CXtlHAwFIBhcYCCzLNjHq5AXBjloEqhnnasgRAodCoJa9Nfl7hZNQ6JBjgdqLftez7+1ZxCf5nBD+8loYZQ7c13Rk6A8+SpydoxJHm58RgK+5ty/88gP9JrB roksoliana.basa.mtr.2017@edu.lpnu.ua"
    #  "${file("~/ssh/idrsa.pub")}"
    #  "${file("~/ssh/idrsa.pub")}"
 }

variable "os_image_publisher" {
    description = "VM image publisher" 
    default = "Canonical" /*credativ*/
}

variable "os_image_offer" {
    description = "Specify list if private_ips assigned to each VMs respectively"
    default = "UbuntuServer"
} 

variable "os_image_sku" {
    description = "Specify OS image SKU."    
    default = "18.04-LTS" 
}

variable "os_image_version" {
    description = "Specify OS image Version."   
    default = "latest"
}

variable "vm_sizes" { 
    description = "Specify Virtual Machine sizes."    
    default = "Standard_B1s"/*"Standard_D4s_v3""Standard_DS1_v2"*/
}

variable "vm_managed_disk_type" { 
    description = "Specify VM OS Disk Type."    
    default = "Standard_LRS"/*"Premium_LRS"*/
} 

variable "fault_domain_count" {
    description = "Specify Availability Set Fault Domain."    
     default = "3" 
}

variable "update_domain_count" {
    description = "Specify Availability Set Update Domain."    
    default = "3" 
} 

variable "host_names" {
    description = "Specify Host Name for each virtual machine starting with 0 respectively."
    type    = "list"
    default = ["host0", "host1", "host2"]
}

variable "backend_address_pools_ids" {
    description = "Backend Address Pool IDs used to attached each VM behind Azure Load Balancer."    
    type    = "list"
    default  = ["10.0.1.1","10.0.2.1", "10.0.3.1"]
}