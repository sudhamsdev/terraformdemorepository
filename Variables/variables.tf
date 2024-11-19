# Input variables Block
variable "ami_id" {
  description = "(Important) Provide Ubuntu AMI 24.04 LTS from Virginia"
  type        = string
  default     = "ami-06b21ccaeff8cd686"
}

variable "size" {
  description = "(Important) Provide Instance type from t2 family"
  type        = string
  default     = "t2.micro"
}

variable "ssh_key_pair" {
  description = "(Important) Provide SSH key name from Virginia"
  type        = string
  default     = "virgina-key"
}

variable "instance_tags" {
  description = "(Optional) Provide tags for Instances"
  type        = map(string)
  default = {
    "Name"        = "PublicInstance"
  }
}

locals {
  common_tags = {
    "Environment" = "Development"
    "Session" = "Online"
  }
}