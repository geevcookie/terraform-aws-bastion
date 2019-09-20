variable "project" {
  description = "The identifier for the project."
  type = "string"
}

variable "vpc" {
  type = "string"
  description = "VPC ID"
}

variable "subnetid" {
  type = "string"
  description = "Subnet ID"
}

variable "keyname" {
  type = "string"
  description = "SSH Key"
}

variable "allowed_cidr_blocks" {
  type = "list"
  description = "CIDR blocks that are allowed to connect"

  default = [
    "0.0.0.0/0",
  ]
}