# Google Cloud Scheduler

Module made for Terraform 0.12.x

### Code examples

```
module "scheduler_example" {
  source = "github.com/bulderbank/terraform-google-cloud-scheduler"

  created_on = "2020-01-03"
  created_by = "fredrick-myrvoll"
  updated_on = "2020-03-24"
  updated_by = "fredrick-myrvoll"

  environment       = var.environment
  google_project    = var.google_project
  google_region_alt = var.google_region_alt

  jobs_pubsub = {
    exampleJob = {
      name        = "example-job-name"
      description = "Runs a test job every 5 minutes"
      schedule    = */5 * * * *
      topic_name  = "example-topic-name"
      message     = "Example message payload, must be set."
      attributes  = {
        "key":"value",
      }
    }
  }
}
```
