#resource group
variable "rgname" {}
variable "location" {}

# #Boot Diagnostics Account
# variable "stbootdiag" {}
# variable "stbootdiagkind" {}
# variable "stbootdiagtier" {}
# variable "stbootdiagrepl" {}
# variable "stbootdiaghttps" {}



variable "tags" {
  default     = {}
  description = "Common tags to be assigned to all resources"
  type        = map(string)
}