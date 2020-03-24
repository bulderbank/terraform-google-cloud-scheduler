resource "google_cloud_scheduler_job" "job" {
  count = length(keys(var.jobs_pubsub))

  project   = var.google_project
  region    = var.google_region_alt
  time_zone = "Europe/Oslo"

  name        = lookup(element(values(var.jobs_pubsub), count.index), "name")
  description = lookup(element(values(var.jobs_pubsub), count.index), "description")
  schedule    = lookup(element(values(var.jobs_pubsub), count.index), "schedule")

  pubsub_target {
    topic_name = "projects/${var.google_project}/topics/${lookup(element(values(var.jobs_pubsub), count.index), "topic_name")}"
    data       = base64encode(lookup(element(values(var.jobs_pubsub), count.index), "message"))
    attributes = lookup(element(values(var.jobs_pubsub), count.index), "attributes")
  }

  depends_on = [google_project_service.cloud_scheduler]
}
