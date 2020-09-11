terraform {
backend "gcs" {
bucket = "akhil-21039"
prefix = "terraform/state"
}
}