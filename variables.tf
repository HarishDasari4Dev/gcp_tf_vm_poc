variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "zone" {
  description = "GCP zone"
  type        = string
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
}

variable "credentials_file" {
  description = "Path to the service account credentials file"
  type        = string
}

variable "machine_type" {
  description = "VM machine type"
  type        = string
  default     = "e2-medium"
}

variable "image" {
  description = "Disk image to use"
  type        = string
  default     = "projects/debian-cloud/global/images/debian-11-bullseye-v20240312"
}

variable "disk_size_gb" {
  description = "Size of the VM disk in GB"
  type        = number
  default     = 10
}

variable "network" {
  description = "VPC Network name"
  type        = string
  default     = "default"
}

variable "subnetwork" {
  description = "Subnetwork name"
  type        = string
  default     = "default"
}

variable "service_account_email" {
  description = "Service account email for the VM"
  type        = string
  default     = ""
}

variable "tags" {
  description = "List of tags to assign to the VM"
  type        = list(string)
  default     = []
}