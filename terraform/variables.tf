variable "key_name" { type = string }
variable "filename" { type = string }
variable "vpccidr_block" { type = string }
variable "vpctagname" { type = string }
variable "cidr_block" { type = string }
variable "ami_id" { type = string }
variable "instance_type" { type = string }
variable "machine_name" { type = string }
variable "machine_system" { type = string }
variable "backend_bucket_name" {
  description = "Name of the S3 bucket for remote state"
  type        = string
}

variable "lock_table_name" {
  description = "Name of DynamoDB table for state lock"
  type        = string
}

variable "servercount" { type = number }
