terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.21.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
}

# Data Lake Bucket
resource "google_storage_bucket" "dez-finalproject" {
  name          = var.gcs_bucket_name
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

# DWH
resource "google_bigquery_dataset" "youtube_channels"{
  dataset_id = var.bq_dataset_name
  location = var.location
}