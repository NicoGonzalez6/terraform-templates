variable "cidr_block" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overriden"
  type        = string
  default     = ""
}

variable "public_sbnts" {
  type        = list(string)
  description = "The CIDR Block for the subnets"
  default     = [""]
}

variable "private_sbnts" {
  type        = list(string)
  description = "The CIDR Block for the subnets"
  default     = [""]
}
