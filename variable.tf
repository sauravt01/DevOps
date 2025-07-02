variable "mera_rg" {

    description = "The name of the resource group"
    type        = string
    default     = "rg101"
  
}

variable "mera_location" {

    description = "The location of the resource group"
    type        = string
    default     = "westus"
  
}
variable "mera_vnet_name" {

    description = "The name of the virtual network"
    type        = string
    default     = "vnet101"
  
}

variable "vm_name" {

    description = "The name of the virtual machine"
    type        = string
    default     = "vm101"
  
}

variable "mera_subnet_name" {

    description = "The name of the subnet"
    type        = string
    default     = "subnet101"
  
}

variable "mera_add_space" {

    description = "The address space for the virtual network in CIDR notation"
    type        = list(string)
    default     = ["10.0.0.0/16"]
  
}


variable "mera_address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string) 
    default     = ["10.0.1.0/24"] 
}
variable "admin_username" {
  description = "The administrator username for the virtual machine."
  type        = string
  default     = "azure"
  
}
variable "password" {
  description = "The administrator password for the virtual machine."
  type        = string
  default     = "Password1"
}
