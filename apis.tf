resource "google_project_service" "cloud_scheduler" {
  project = var.google_project
  service = "cloudscheduler.googleapis.com"
}
