variable "environment" {}

variable "google_project" {}

variable "google_region_alt" {}

variable "created_by" {}

variable "created_on" {}

variable "updated_by" {
  default = ""
}

variable "updated_on" {
  default = ""
}

variable "jobs_pubsub" {
  default = ""
}

locals {
  labels = {
    created-with = "terraform"
    created-by   = var.created_by
    created-on   = var.created_on
    environment  = var.environment
  }
}
