created_on = "2020-01-03"
created_by = "fredrick-myrvoll"
updated_on = "2020-05-04"
updated_by = "fredrick-myrvoll"

environment       = "dev"
google_project    = "module-dev"
google_region_alt = "europe-west1"

jobs_pubsub = {
  exampleJob = {
    name        = "example-job-name"
    description = "Runs a test job every 5 minutes"
    schedule    = "*/5 * * * *"
    topic_name  = "example-topic-name"
    message     = "Example message payload, must be set."
    attributes = {
      "key" : "value",
    }
  }
}
