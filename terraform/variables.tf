variable "project" {
    description = "Project"
    default    = "dez-finalproject"
}

variable "region" {
    description = "Region"
    default    = "us-central1"
}

variable "location" {
    description = "Project Location"
    default    = "US"
}

variable "gcs_storage_class"{
    description = "Bucket Storage Class"
    default = "STANDARD"
}

variable "gcs_bucket_name" {
    description = "My Storage Bucket Name"
    default    = "dez-finalproject-terra-bucket"
}

variable "bq_dataset_name" {
    description = "My BigQuery Dataset Name"
    default    = "youtube_channels"
}
