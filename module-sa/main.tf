terraform {
  required_version = ">= 1.4.2"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.61.0"
    }
  }
}

locals {
  attribute = var.subject != null ? "attribute.sub" : "attribute.repository"
  value     = var.subject != null ? var.subject : var.repository
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account
data "google_service_account" "user" {
  project    = var.project_id
  account_id = var.account_id
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account_iam#google_service_account_iam_binding
resource "google_service_account_iam_binding" "wif-binding" {
  service_account_id = data.google_service_account.user.name
  role               = "roles/iam.workloadIdentityUser"
  members = [
    "principalSet://iam.googleapis.com/${var.pool_name}/${local.attribute}/${local.value}"
  ]
}