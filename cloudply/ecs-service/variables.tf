variable "service_name" {}

variable "task_definition_arn" {}

variable "desired_count" {
  type = number
  default = 1
}

