variable "table_name" {
  default = "raghu-state-table"
  type = string
}

variable "billing_mode" {
  default = "PAY_PER_REQUEST"
  type = string
}

variable "hash_key" {
  default = "LockID"
  type = string
}