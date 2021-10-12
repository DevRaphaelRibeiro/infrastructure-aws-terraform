variable "region"   {
    description = "Define what region the instance will be deploy"
    default =   "sa-east-1"
}


variable "AWS_REGION_AZ_WEB_1" {
  default = "sa-east-1a"
}

variable "AWS_REGION_AZ_WEB_2" {
  default = "sa-east-1b"
}
variable "AWS_REGION_AZ_WEB_3" {
  default = "sa-east-1c"
}

variable "AWS_REGION_AZ_DB"     {
    default =   "sa-east-1a"
}