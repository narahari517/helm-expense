variable "vpc_cidr" {
    default = {}
}

variable "common_tags" {
    default = {}
}

variable "enable_dns_hostnames" {
    default = true
}

variable "vpc_tags" {
    default = {}
}

variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "igw_tags" {
    default = {}
}

variable "public_subnet_cidrs" {
    type = list(string)
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}

variable "public_subnet_tags" {
    default = {}
}

variable "private_subnet_cidrs" {
    type = list(string)
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "Please provide 2 valid private subnet CIDR"
    }
}

variable "private_subnet_tags" {
    default = {}
}

variable "database_subnet_cidrs" {
    type = list(string)
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "Please provide 2 valid database subnet CIDR"
    }
}

variable "database_subnet_tags" {
    default = {}
}

variable "db_subnect_group_tags" {
    default = {}
}

variable "nat_gateway_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}

variable "is_peering_required" {
    type = bool
    default = false
}

variable "vpc_peering_tags" {
    default = {}
}

