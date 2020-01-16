# Google Cloud Scheduler

Module made for Terraform 0.12.x

### Code examples

```
module "scheduler_example" {
  source = "github.com/bulderbank/terraform-google-cloud-scheduler"

  created_on = "2020-01-03"
  created_by = "fredrick-myrvoll"

  environment       = var.environment
  google_project    = var.google_project
  google_region_alt = var.google_region_alt

  jobs_pubsub = {
    exampleJob = {
      name        = var.example_job_name
      description = var.example_job_description
      schedule    = var.example_job_schedule
      topic_name  = var.example_jobs_pubsub_topic
      message     = var.example_jobs_pubsub_message
    }
  }
}
```
