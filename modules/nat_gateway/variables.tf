variable "tags" {
  type        = map(any)
  description = "map of tags"
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet"
}
